using Renge.Util;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Renge.PPB {
    public enum PBShape {
        Linear,
        Circular
    }

    public partial class ProceduralProgressBar : MonoBehaviour {
        #region Fields

        //basic
        [SerializeField] float pbValue = 0.5f;
        [SerializeField] float segmentCount = 1;

        //circle
        [SerializeField] int sides = 50;
        [SerializeField] protected float radius = 0.5f;
        [SerializeField] protected float width = .3f;
        [SerializeField] protected float arc = 0;
        [SerializeField] protected bool autoArcOffset = true;
        [SerializeField] protected float autoArcOffsetThreshold = 0.8f;
        [SerializeField] protected float circleLength = 1;
        [SerializeField] protected int edgeLoops = 5;
        [SerializeField] protected float subdivisionDetail = 1;
        [SerializeField] protected float corkScrew = 0.000001f; // this can be set to 0, but results in z-fighting when the progress bar overlaps due to circleLength > 1 or arc < 0
        [SerializeField] protected float faceRotation = 0;
        [SerializeField] protected bool clockwiseFill = true;

        //advanced material properties
        [SerializeField] protected bool centerFill = false;
        [SerializeField] protected float borderWidth = 0.03f;
        [SerializeField] protected float innerBorderWidth = 0.02f;
        [SerializeField] protected float borderRadius = 0.1f;
        [SerializeField] protected Vector4 borderRadiusOffset = Vector4.zero;
        [SerializeField] protected float segmentSpacing = 0;
        [SerializeField] protected float innerRoundingPercent = 1;
        [SerializeField][ColorUsage(true, true)] protected Color innerColor = Color.red;
        [SerializeField][ColorUsage(true, true)] protected Color backgroundColor = Color.white;
        [SerializeField][ColorUsage(true, true)] protected Color borderColor = Color.black;
        [SerializeField][ColorUsage(true, true)] protected Color innerBorderColor = new Color(0.6f, 0, 0);
        [SerializeField][ColorUsage(true, true)] protected Color overlayColor = Color.white;
        [SerializeField] protected Texture2D innerTexture;
        [SerializeField] protected float innerTextureOpacity = 1;
        [SerializeField] protected Vector2 innerTextureTiling = Vector2.one;
        [SerializeField] protected Vector2 innerTextureOffset = Vector2.zero;
        [SerializeField] protected float innerTextureRotation = 0;
        [SerializeField] protected Gradient innerGradient;
        [SerializeField] protected bool innerGradientEnabled = false;
        [SerializeField] protected float innerGradientRotation = 0;
        [SerializeField] protected bool valueAsGradientTimeInner = false;
        [SerializeField] protected Texture2D overlayTexture;
        [SerializeField] protected float overlayTextureOpacity = 1;
        [SerializeField] protected Vector2 overlayTextureTiling = Vector2.one;
        [SerializeField] protected Vector2 overlayTextureOffset = Vector2.zero;
        [SerializeField] protected Texture2D borderTexture;
        [SerializeField] protected Vector2 borderTextureTiling = Vector2.one;
        [SerializeField] protected Vector2 borderTextureOffset = Vector2.zero;
        [SerializeField] protected float borderTextureOpacity = 1;
        [SerializeField] protected Texture2D backgroundTexture;
        [SerializeField] protected Vector2 backgroundTextureTiling = Vector2.one;
        [SerializeField] protected Vector2 backgroundTextureOffset = Vector2.zero;
        [SerializeField] protected float backgroundGradientRotation = 0;
        [SerializeField] protected float backgroundTextureOpacity = 1;
        [SerializeField] protected Gradient backgroundGradient;
        [SerializeField] protected bool backgroundTextureScaleWithSegments = true;
        [SerializeField] protected bool backgroundGradientEnabled = false;
        [SerializeField] protected bool valueAsGradientTimeBackground = false;
        [SerializeField] protected bool pulsateWhenLow = false;
        [SerializeField] protected float pulseActivationThreshold = 0.5f;
        [SerializeField] protected float pulseSpeed = 10;
        [SerializeField] protected float pulseRamp = 0.1f;
        [SerializeField][ColorUsage(true, true)] protected Color pulseColor = Color.black;
        [SerializeField] protected AnimationCurve variableWidthCurve;
        [SerializeField] protected bool adjustBorderRadiusToWidthCurve = true;
        [SerializeField] protected float slant = 0;
        [SerializeField] protected float flipbookFPS = 24;
        [SerializeField] protected Vector2 innerFlipbookDim = Vector2.one;
        [SerializeField] protected Vector2 overlayFlipbookDim = Vector2.one;
        [SerializeField] protected Vector2 borderFlipbookDim = Vector2.one;
        [SerializeField] protected Vector2 backgroundFlipbookDim = Vector2.one;
        [SerializeField] protected Vector2 valueMaskOffset = Vector2.zero;
        [SerializeField] protected bool offsetTextureWithValue = true;
        [SerializeField][ColorUsage(true, true)] protected Color valueShadowColor = Color.black;
        [SerializeField] protected float valueShadowSize = 0.1f;
        [SerializeField] protected float valueShadowFalloff = 0.99f;
        [SerializeField][ColorUsage(true, true)] protected Color borderShadowColor = Color.black;
        [SerializeField] protected float borderShadowSize = 0.1f;
        [SerializeField] protected float borderShadowFalloff = 0.99f;
        [SerializeField][ColorUsage(true, true)] protected Color valueInsetShadowColor = Color.black;
        [SerializeField] protected float valueInsetShadowSize = 0.1f;
        [SerializeField] protected float valueInsetShadowFalloff = 0.99f;
        [SerializeField][ColorUsage(true, true)] protected Color borderInsetShadowColor = Color.clear;
        [SerializeField] protected float borderInsetShadowSize = 0.1f;
        [SerializeField] protected float borderInsetShadowFalloff = 0.99f;

        //keywords
        [SerializeField] PBShape shape;
        [SerializeField] protected bool innerTextureEnabled = false;
        [SerializeField] protected bool overlayTextureEnabled = false;
        [SerializeField] protected bool borderTextureEnabled = false;
        [SerializeField] protected bool backgroundTextureEnabled = false;

        #endregion

        #region Properties

        public float Value {
            get {
                return pbValue;
            }
            set {
                if (value < 0 && pbValue == 0 || value > SegmentCount && pbValue == SegmentCount) return;
                if(value - pbValue != 0)
                    onValueChanged?.Invoke(value, value - pbValue);
                int oldSegment = (int)(pbValue);
                int newSegment = (int)(value);
                if (oldSegment < newSegment && oldSegment < SegmentCount && oldSegment >= 0) {
                    //Debug.Log("Segment Filled");
                    int segmentDiff = 0;
                    while (segmentDiff < newSegment - oldSegment) {
                        onSegmentFilled?.Invoke(oldSegment + segmentDiff);
                        segmentDiff++;
                    }
                    if (oldSegment == SegmentCount - 1) {
                        //Debug.Log("PB Filled");

                        onFilled?.Invoke();
                    }
                } else if ((newSegment < oldSegment || value <= 0 && pbValue > 0) && oldSegment < SegmentCount && oldSegment >= 0) {
                    //Debug.Log("Segment Empty");

                    int segmentDiff = 0;
                    while (segmentDiff < oldSegment - newSegment) {
                        onSegmentEmpty?.Invoke(oldSegment - segmentDiff);
                        segmentDiff++;
                    }
                    if (oldSegment == newSegment) {
                        onSegmentEmpty?.Invoke(oldSegment);
                    }
                    if (oldSegment == 0) {
                        //Debug.Log("PB Empty");

                        onEmpty?.Invoke();
                    }
                }
                pbValue = value < 0 ? 0 : value > SegmentCount ? SegmentCount : value;
                material.SetFloat(PropertyToID("_Value"), value);
            }
        }

        public float SegmentCount {
            get {
                return segmentCount;
            }
            set {
                material.SetFloat("_SegmentCount", value);
                segmentCount = value;
            }
        }

        public PBShape Shape {
            get => shape;
            set {
                shape = value;
                UpdateShape();
            }
        }

        public int Sides {
            get => sides;
            set {
                sides = value;
                UpdateSides();
            }
        }

        public float Radius {
            get => radius;
            set {
                radius = value;
                UpdateRadius();
            }
        }

        public float Width {
            get => width;
            set {
                width = value;
                UpdateWidth();
            }
        }

        public float Arc {
            get => arc;
            set {
                arc = value;
                UpdateArc();
            }
        }

        public bool AutoArcOffset {
            get => autoArcOffset;
            set {
                autoArcOffset = value;
                UpdateAutoArcOffset();
            }
        }

        public float AutoArcOffsetThreshold {
            get => autoArcOffsetThreshold;
            set {
                autoArcOffsetThreshold = value;
                UpdateAutoArcOffsetThreshold();
            }
        }

        public float CircleLength {
            get => circleLength;
            set {
                circleLength = value;
                UpdateCircleLength();
            }
        }

        public int EdgeLoops {
            get => edgeLoops;
            set {
                edgeLoops = value;
                UpdateEdgeLoops();
            }
        }

        public float SubdivisionDetail {
            get => subdivisionDetail;
            set {
                subdivisionDetail = value;
                UpdateSubdivisionDetail();
            }
        }

        public float CorkScrew {
            get => corkScrew;
            set {
                corkScrew = value;
                UpdateCorkScrew();
            }
        }

        //public bool CenterFill{ get => centerFill; set { centerFill = value; UpdateCenterFill();} }
        public float BorderWidth{ get => borderWidth; set {borderWidth = value; UpdateBorderWidth();}}
        public float InnerBorderWidth{ get => innerBorderWidth; set {innerBorderWidth = value; UpdateInnerBorderWidth();}}
        public float BorderRadius{ get => borderRadius; set {borderRadius = value; UpdateBorderRadius();}}
        public Vector4 BorderRadiusOffset{ get => borderRadiusOffset; set {borderRadiusOffset = value; UpdateBorderRadiusOffset();}}
        public float SegmentSpacing{ get => segmentSpacing; set {segmentSpacing = value; UpdateSegmentSpacing();}}
        public float InnerRoundingPercent{ get => innerRoundingPercent; set {innerRoundingPercent = value; UpdateInnerRoundingPercent();}}
        public Color InnerColor{ get => innerColor; set {innerColor = value; UpdateInnerColor();}}
        public Color BackgroundColor{ get => backgroundColor; set {backgroundColor = value; UpdateBackgroundColor();}}
        public Color BorderColor{ get => borderColor; set {borderColor = value; UpdateBorderColor();}}
        public Color InnerBorderColor{ get => innerBorderColor; set {innerBorderColor = value; UpdateInnerBorderColor();}}
        public Color OverlayColor{ get => overlayColor; set {overlayColor = value; UpdateOverlayColor();}}
        public Texture2D InnerTexture{ get => innerTexture; set {innerTexture = value; UpdateInnerTexture();}}
        public float InnerTextureOpacity{ get => innerTextureOpacity; set {innerTextureOpacity = value; UpdateInnerTextureOpacity();}}
        public Vector2 InnerTextureTiling{ get => innerTextureTiling; set {innerTextureTiling = value; UpdateInnerTextureTiling();}}
        public Vector2 InnerTextureOffset{ get => innerTextureOffset; set {innerTextureOffset = value; UpdateInnerTextureOffset();}}
        public float InnerTextureRotation{ get => innerTextureRotation; set {innerTextureRotation = value; UpdateInnerTextureRotation();}}
        public Gradient InnerGradient{ get => innerGradient; set {innerGradient = value; UpdateInnerGradient();}}
        public bool InnerGradientEnabled{ get => innerGradientEnabled; set {innerGradientEnabled = value; UpdateInnerGradientEnabled();}}
        public float InnerGradientRotation{ get => innerGradientRotation; set {innerGradientRotation = value; UpdateInnerGradientRotation();}}
        public bool ValueAsGradientTimeInner{ get => valueAsGradientTimeInner; set {valueAsGradientTimeInner = value; UpdateValueAsGradientTimeInner();}}
        public Texture2D OverlayTexture{ get => overlayTexture; set {overlayTexture = value; UpdateOverlayTexture();}}
        public float OverlayTextureOpacity{ get => overlayTextureOpacity; set {overlayTextureOpacity = value; UpdateOverlayTextureOpacity();}}
        public Vector2 OverlayTextureTiling{ get => overlayTextureTiling; set {overlayTextureTiling = value; UpdateOverlayTextureTiling();}}
        public Vector2 OverlayTextureOffset{ get => overlayTextureOffset; set {overlayTextureOffset = value; UpdateOverlayTextureOffset();}}
        public Texture2D BorderTexture{ get => borderTexture; set {borderTexture = value; UpdateBorderTexture();}}
        public Vector2 BorderTextureTiling{ get => borderTextureTiling; set {borderTextureTiling = value; UpdateBorderTextureTiling();}}
        public Vector2 BorderTextureOffset{ get => borderTextureOffset; set {borderTextureOffset = value; UpdateBorderTextureOffset();}}
        public float BorderTextureOpacity{ get => borderTextureOpacity; set {borderTextureOpacity = value; UpdateBorderTextureOpacity();}}
        public Texture2D BackgroundTexture{ get => backgroundTexture; set {backgroundTexture = value; UpdateBackgroundTexture();}}
        public Vector2 BackgroundTextureTiling{ get => backgroundTextureTiling; set {backgroundTextureTiling = value; UpdateBackgroundTextureTiling();}}
        public Vector2 BackgroundTextureOffset{ get => backgroundTextureOffset; set {backgroundTextureOffset = value; UpdateBackgroundTextureOffset();}}
        public float BackgroundGradientRotation{ get => backgroundGradientRotation; set {backgroundGradientRotation = value; UpdateBackgroundGradientRotation();}}
        public float BackgroundTextureOpacity{ get => backgroundTextureOpacity; set {backgroundTextureOpacity = value; UpdateBackgroundTextureOpacity();}}
        public Gradient BackgroundGradient{ get => backgroundGradient; set {backgroundGradient = value; UpdateBackgroundGradient();}}
        public bool BackgroundTextureScaleWithSegments{ get => backgroundTextureScaleWithSegments; set {backgroundTextureScaleWithSegments = value; UpdateBackgroundTextureScaleWithSegments();}}
        public bool BackgroundGradientEnabled{ get => backgroundGradientEnabled; set {backgroundGradientEnabled = value; UpdateBackgroundGradientEnabled();}}
        public bool ValueAsGradientTimeBackground{ get => valueAsGradientTimeBackground; set {valueAsGradientTimeBackground = value; UpdateValueAsGradientTimeBackground();}}
        public bool PulsateWhenLow{ get => pulsateWhenLow; set {pulsateWhenLow = value; UpdatePulsateWhenLow();}}
        public float PulseActivationThreshold{ get => pulseActivationThreshold; set {pulseActivationThreshold = value; UpdatePulseActivationThreshold();}}
        public float PulseSpeed{ get => pulseSpeed; set {pulseSpeed = value; UpdatePulseSpeed();}}
        public float PulseRamp{ get => pulseRamp; set {pulseRamp = value; UpdatePulseRamp();}}
        public Color PulseColor{ get => pulseColor; set {pulseColor = value; UpdatePulseColor();}}
        public AnimationCurve VariableWidthCurve{ get => variableWidthCurve; set {variableWidthCurve = value; UpdateVariableWidthCurve();}}
        public bool AdjustBorderRadiusToWidthCurve{ get => adjustBorderRadiusToWidthCurve; set {adjustBorderRadiusToWidthCurve = value; UpdateAdjustBorderRadiusToWidthCurve();}}
        public float Slant{ get => slant; set {slant = value; UpdateSlant();}}
        public float FlipbookFPS{ get => flipbookFPS; set {flipbookFPS = value; UpdateFlipbookFPS();}}
        public Vector2 InnerFlipbookDim{ get => innerFlipbookDim; set {innerFlipbookDim = value; UpdateInnerFlipbookDim();}}
        public Vector2 OverlayFlipbookDim{ get => overlayFlipbookDim; set {overlayFlipbookDim = value; UpdateOverlayFlipbookDim();}}
        public Vector2 BorderFlipbookDim{ get => borderFlipbookDim; set {borderFlipbookDim = value; UpdateBorderFlipbookDim();}}
        public Vector2 BackgroundFlipbookDim{ get => backgroundFlipbookDim; set {backgroundFlipbookDim = value; UpdateBackgroundFlipbookDim();}}
        public Vector2 ValueMaskOffset{ get => valueMaskOffset; set {valueMaskOffset = value; UpdateValueMaskOffset();}}
        public bool OffsetTextureWithValue{ get => offsetTextureWithValue; set {offsetTextureWithValue = value; UpdateOffsetTextureWithValue();}}
        public Color ValueShadowColor{ get => valueShadowColor; set {valueShadowColor = value; UpdateValueShadowColor();}}
        public float ValueShadowSize{ get => valueShadowSize; set {valueShadowSize = value; UpdateValueShadowSize();}}
        public float ValueShadowFalloff{ get => valueShadowFalloff; set {valueShadowFalloff = value; UpdateValueShadowFalloff();}}
        public Color BorderShadowColor{ get => borderShadowColor; set {borderShadowColor = value; UpdateBorderShadowColor();}}
        public float BorderShadowSize{ get => borderShadowSize; set {borderShadowSize = value; UpdateBorderShadowSize();}}
        public float BorderShadowFalloff{ get => borderShadowFalloff; set {borderShadowFalloff = value; UpdateBorderShadowFalloff();}}
        public Color ValueInsetShadowColor{ get => valueInsetShadowColor; set {valueInsetShadowColor = value; UpdateValueInsetShadowColor();}}
        public float ValueInsetShadowSize{ get => valueInsetShadowSize; set {valueInsetShadowSize = value; UpdateValueInsetShadowSize();}}
        public float ValueInsetShadowFalloff{ get => valueInsetShadowFalloff; set {valueInsetShadowFalloff = value; UpdateValueInsetShadowFalloff();}}
        public Color BorderInsetShadowColor{ get => borderInsetShadowColor; set {borderInsetShadowColor = value; UpdateBorderInsetShadowColor();}}
        public float BorderInsetShadowSize{ get => borderInsetShadowSize; set {borderInsetShadowSize = value; UpdateBorderInsetShadowSize();}}
        public float BorderInsetShadowFalloff { get => borderInsetShadowFalloff; set { borderInsetShadowFalloff = value; UpdateBorderInsetShadowFalloff(); } }
        #endregion

        #region Update Methods

        /// <summary>
        /// Set the fill percent of the progress bar.
        /// </summary>
        /// <param name="value">the fill percentage. A value between 0 and 1</param>
        public void SetPercent(float value) {
            value = Mathf.Clamp(value, 0, 1);
            Value = value * SegmentCount;
        }

        private void UpdateShape() {
            switch (shape) {
                case PBShape.Linear:
                    material.EnableKeyword("SHAPE_LINEAR");
                    material.DisableKeyword("SHAPE_CIRCULAR");
                    break;
                case PBShape.Circular:
                    material.EnableKeyword("SHAPE_CIRCULAR");
                    material.DisableKeyword("SHAPE_LINEAR");
                    break;
            }
            MarkMeshDirty();
        }

        private void UpdateInnerTextureEnabled() {
            if (innerTextureEnabled) {
                material.EnableKeyword("INNER_TEXTURE_ON");
            } else {
                material.DisableKeyword("INNER_TEXTURE_ON");
            }
        }
        private void UpdateOverlayTextureEnabled() {
            if (overlayTextureEnabled) {
                material.EnableKeyword("OVERLAY_TEXTURE_ON");
            } else {
                material.DisableKeyword("OVERLAY_TEXTURE_ON");
            }
        }
        private void UpdateBorderTextureEnabled() {
            if (borderTextureEnabled) {
                material.EnableKeyword("BORDER_TEXTURE_ON");
            } else {
                material.DisableKeyword("BORDER_TEXTURE_ON");
            }
        }
        private void UpdateBackgroundTextureEnabled() {
            if (backgroundTextureEnabled) {
                material.EnableKeyword("BACKGROUND_TEXTURE_ON");
            } else {
                material.DisableKeyword("BACKGROUND_TEXTURE_ON");
            }
        }

        private void UpdateValue() {
            Value = pbValue;
        }

        private void UpdateSegmentCount() {
            SegmentCount = segmentCount;
        }
        private void UpdateSides() {
            if (shape == PBShape.Circular) {
                if (sides < 3)
                    sides = 3;
                else if (sides > 100)
                    sides = 100;
                MarkMeshDirty();
            }
        }

        private void UpdateRadius() {
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
                material.SetFloat("_Radius", radius);
            }
        }

        private void UpdateWidth() {
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
                material.SetFloat("_Width", width);
            }
        }

        private void UpdateArc() {
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
                material.SetFloat("_Arc", arc);
            }
        }

        private void UpdateAutoArcOffset() {
            if(shape == PBShape.Circular) {
                MarkMeshDirty();
            }
        }

        private void UpdateAutoArcOffsetThreshold() {
            if (shape == PBShape.Circular && arc > autoArcOffsetThreshold) {
                MarkMeshDirty();
            }
        }

        private void UpdateCircleLength() {
            if (circleLength < 1)
                circleLength = 1;
            else if(circleLength > 100) {
                circleLength = 100;
            }
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
                material.SetFloat("_CircleLength", circleLength);
            }
        }
        private void UpdateEdgeLoops() {
            if (edgeLoops < 2)
                edgeLoops = 2;
            else if(edgeLoops > 100) {
                edgeLoops = 100;
            }
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
            }
        }

        private void UpdateSubdivisionDetail() {
            if (subdivisionDetail < 0)
                subdivisionDetail = 0;
            else if (subdivisionDetail > 1)
                subdivisionDetail = 1;
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
            }
        }

        private void UpdateCorkScrew() {
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
            }
        }

        private void UpdateFaceRotation() {
            if (shape == PBShape.Circular) {
                MarkMeshDirty();
            }
        }

        private void UpdateClockwiseFill() {
            MarkMeshDirty();
        }

        private void UpdateSquareSubdivisions() {
            if (squareSubdivisions < 0)
                squareSubdivisions = 0;
            if (squareSubdivisions > 10)
                squareSubdivisions = 10;
            if (shape == PBShape.Linear) {
                MarkMeshDirty();
            }
        }



        private void UpdateCenterFill() { SetMaterialFloat(ProgressBarProperties.CenterFill, centerFill ? 1 : 0); }
        private void UpdateBorderWidth() { SetMaterialFloat(ProgressBarProperties.BorderWidth, borderWidth); }
        private void UpdateInnerBorderWidth() { SetMaterialFloat(ProgressBarProperties.InnerBorderWidth, innerBorderWidth); }
        private void UpdateBorderRadius() { SetMaterialFloat(ProgressBarProperties.BorderRadius, borderRadius); }
        private void UpdateBorderRadiusOffset() { SetMaterialVector(ProgressBarProperties.BorderRadiusOffset, borderRadiusOffset); }
        private void UpdateSegmentSpacing() { SetMaterialFloat(ProgressBarProperties.SegmentSpacing, segmentSpacing); }
        private void UpdateInnerRoundingPercent() { SetMaterialFloat(ProgressBarProperties.InnerRoundingPercent, innerRoundingPercent); }
        private void UpdateInnerColor() { SetMaterialColor(ProgressBarProperties.InnerColor, innerColor); }
        private void UpdateBackgroundColor() { SetMaterialColor(ProgressBarProperties.BackgroundColor, backgroundColor); }
        private void UpdateBorderColor() { SetMaterialColor(ProgressBarProperties.BorderColor, borderColor); }
        private void UpdateInnerBorderColor() { SetMaterialColor(ProgressBarProperties.InnerBorderColor, innerBorderColor); }
        private void UpdateOverlayColor() { SetMaterialColor(ProgressBarProperties.OverlayColor, overlayColor); }
        private void UpdateInnerTexture() { SetMaterialTexture(ProgressBarProperties.InnerTexture, innerTexture); }
        private void UpdateInnerTextureOpacity() { SetMaterialFloat(ProgressBarProperties.InnerTextureOpacity, innerTextureOpacity); }
        private void UpdateInnerTextureTiling() { SetMaterialVector(ProgressBarProperties.InnerTextureTiling, innerTextureTiling); }
        private void UpdateInnerTextureOffset() { SetMaterialVector(ProgressBarProperties.InnerTextureOffset, innerTextureOffset); }
        private void UpdateInnerTextureRotation() { SetMaterialFloat(ProgressBarProperties.InnerTextureRotation, innerTextureRotation); }
        private void UpdateInnerGradient() { SetMaterialTexture(ProgressBarProperties.InnerGradient, innerGradient.ToTexture2D()); }
        private void UpdateInnerGradientEnabled() { SetMaterialFloat(ProgressBarProperties.InnerGradientEnabled, innerGradientEnabled ? 1 : 0); }
        private void UpdateInnerGradientRotation() { SetMaterialFloat(ProgressBarProperties.InnerGradientRotation, innerGradientRotation); }
        private void UpdateValueAsGradientTimeInner() { SetMaterialFloat(ProgressBarProperties.ValueAsGradientTimeInner, valueAsGradientTimeInner ? 1 : 0); }
        private void UpdateOverlayTexture() { SetMaterialTexture(ProgressBarProperties.OverlayTexture, overlayTexture); }
        private void UpdateOverlayTextureOpacity() { SetMaterialFloat(ProgressBarProperties.OverlayTextureOpacity, overlayTextureOpacity); }
        private void UpdateOverlayTextureTiling() { SetMaterialVector(ProgressBarProperties.OverlayTextureTiling, overlayTextureTiling); }
        private void UpdateOverlayTextureOffset() { SetMaterialVector(ProgressBarProperties.OverlayTextureOffset, overlayTextureOffset); }
        private void UpdateBorderTexture() { SetMaterialTexture(ProgressBarProperties.BorderTexture, borderTexture); }
        private void UpdateBorderTextureTiling() { SetMaterialVector(ProgressBarProperties.BorderTextureTiling, borderTextureTiling); }
        private void UpdateBorderTextureOffset() { SetMaterialVector(ProgressBarProperties.BorderTextureOffset, borderTextureOffset); }
        private void UpdateBorderTextureOpacity() { SetMaterialFloat(ProgressBarProperties.BorderTextureOpacity, borderTextureOpacity); }
        private void UpdateBackgroundTexture() { SetMaterialTexture(ProgressBarProperties.BackgroundTexture, backgroundTexture); }
        private void UpdateBackgroundTextureTiling() { SetMaterialVector(ProgressBarProperties.BackgroundTextureTiling, backgroundTextureTiling); }
        private void UpdateBackgroundTextureOffset() { SetMaterialVector(ProgressBarProperties.BackgroundTextureOffset, backgroundTextureOffset); }
        private void UpdateBackgroundGradientRotation() { SetMaterialFloat(ProgressBarProperties.BackgroundGradientRotation, backgroundGradientRotation); }
        private void UpdateBackgroundTextureOpacity() { SetMaterialFloat(ProgressBarProperties.BackgroundTextureOpacity, backgroundTextureOpacity); }
        private void UpdateBackgroundGradient() { SetMaterialTexture(ProgressBarProperties.BackgroundGradient, backgroundGradient.ToTexture2D()); }
        private void UpdateBackgroundTextureScaleWithSegments() { SetMaterialFloat(ProgressBarProperties.BackgroundTextureScaleWithSegments, backgroundTextureScaleWithSegments ? 1 : 0); }
        private void UpdateBackgroundGradientEnabled() { SetMaterialFloat(ProgressBarProperties.BackgroundGradientEnabled, backgroundGradientEnabled ? 1 : 0); }
        private void UpdateValueAsGradientTimeBackground() { SetMaterialFloat(ProgressBarProperties.ValueAsGradientTimeBackground, valueAsGradientTimeBackground ? 1 : 0); }
        private void UpdatePulsateWhenLow() { SetMaterialFloat(ProgressBarProperties.PulsateWhenLow, pulsateWhenLow ? 1 : 0); }
        private void UpdatePulseActivationThreshold() { SetMaterialFloat(ProgressBarProperties.PulseActivationThreshold, pulseActivationThreshold); }
        private void UpdatePulseSpeed() { SetMaterialFloat(ProgressBarProperties.PulseSpeed, pulseSpeed); }
        private void UpdatePulseRamp() { SetMaterialFloat(ProgressBarProperties.PulseRamp, pulseRamp); }
        private void UpdatePulseColor() { SetMaterialColor(ProgressBarProperties.PulseColor, pulseColor); }
        private void UpdateVariableWidthCurve() { if(variableWidthCurve != null) SetMaterialTexture(ProgressBarProperties.VariableWidthCurve, variableWidthCurve.ToTexture2D()); }
        private void UpdateAdjustBorderRadiusToWidthCurve() { SetMaterialFloat(ProgressBarProperties.AdjustBorderRadiusToWidthCurve, adjustBorderRadiusToWidthCurve ? 1 : 0); }
        private void UpdateSlant() { SetMaterialFloat(ProgressBarProperties.Slant, slant); }
        private void UpdateFlipbookFPS() { SetMaterialFloat(ProgressBarProperties.FlipbookFPS, flipbookFPS); }
        private void UpdateInnerFlipbookDim() { SetMaterialVector(ProgressBarProperties.InnerFlipbookDim, innerFlipbookDim); }
        private void UpdateOverlayFlipbookDim() { SetMaterialVector(ProgressBarProperties.OverlayFlipbookDim, overlayFlipbookDim); }
        private void UpdateBorderFlipbookDim() { SetMaterialVector(ProgressBarProperties.BorderFlipbookDim, borderFlipbookDim); }
        private void UpdateBackgroundFlipbookDim() { SetMaterialVector(ProgressBarProperties.BackgroundFlipbookDim, backgroundFlipbookDim); }
        private void UpdateValueMaskOffset() { SetMaterialVector(ProgressBarProperties.ValueMaskOffset, valueMaskOffset); }
        private void UpdateOffsetTextureWithValue() { SetMaterialFloat(ProgressBarProperties.OffsetTextureWithValue, offsetTextureWithValue ? 1 : 0); }
        private void UpdateValueShadowColor() { SetMaterialColor(ProgressBarProperties.ValueShadowColor, valueShadowColor); }
        private void UpdateValueShadowSize() { SetMaterialFloat(ProgressBarProperties.ValueShadowSize, valueShadowSize); }
        private void UpdateValueShadowFalloff() { SetMaterialFloat(ProgressBarProperties.ValueShadowFalloff, valueShadowFalloff); }
        private void UpdateBorderShadowColor() { SetMaterialColor(ProgressBarProperties.BorderShadowColor, borderShadowColor); }
        private void UpdateBorderShadowSize() { SetMaterialFloat(ProgressBarProperties.BorderShadowSize, borderShadowSize); }
        private void UpdateBorderShadowFalloff() { SetMaterialFloat(ProgressBarProperties.BorderShadowFalloff, borderShadowFalloff); }
        private void UpdateValueInsetShadowColor() { SetMaterialColor(ProgressBarProperties.ValueInsetShadowColor, valueInsetShadowColor); }
        private void UpdateValueInsetShadowSize() { SetMaterialFloat(ProgressBarProperties.ValueInsetShadowSize, valueInsetShadowSize); }
        private void UpdateValueInsetShadowFalloff() { SetMaterialFloat(ProgressBarProperties.ValueInsetShadowFalloff, valueInsetShadowFalloff); }
        private void UpdateBorderInsetShadowColor() { SetMaterialColor(ProgressBarProperties.BorderInsetShadowColor, borderInsetShadowColor); }
        private void UpdateBorderInsetShadowSize() { SetMaterialFloat(ProgressBarProperties.BorderInsetShadowSize, borderInsetShadowSize); }
        private void UpdateBorderInsetShadowFalloff() { SetMaterialFloat(ProgressBarProperties.BorderInsetShadowFalloff, borderInsetShadowFalloff); }

        private void ApplyAllSerializedProperties() {
            UpdateValue();
            UpdateSegmentCount();
            UpdateRadius();
            UpdateWidth();
            UpdateArc();
            UpdateAutoArcOffset();
            UpdateAutoArcOffsetThreshold();
            UpdateCircleLength();
            UpdateShape();
            UpdateCenterFill();
            UpdateBorderWidth();
            UpdateInnerBorderWidth();
            UpdateBorderRadius();
            UpdateBorderRadiusOffset();
            UpdateSegmentSpacing();
            UpdateInnerRoundingPercent();
            UpdateInnerColor();
            UpdateBackgroundColor();
            UpdateBorderColor();
            UpdateInnerBorderColor();
            UpdateOverlayColor();
            UpdateInnerTexture();
            UpdateInnerTextureOpacity();
            UpdateInnerTextureTiling();
            UpdateInnerTextureOffset();
            UpdateInnerTextureRotation();
            UpdateInnerGradient();
            UpdateInnerGradientEnabled();
            UpdateInnerGradientRotation();
            UpdateValueAsGradientTimeInner();
            UpdateOverlayTexture();
            UpdateOverlayTextureOpacity();
            UpdateOverlayTextureTiling();
            UpdateOverlayTextureOffset();
            UpdateBorderTexture();
            UpdateBorderTextureTiling();
            UpdateBorderTextureOffset();
            UpdateBorderTextureOpacity();
            UpdateBackgroundTexture();
            UpdateBackgroundTextureTiling();
            UpdateBackgroundTextureOffset();
            UpdateBackgroundGradientRotation();
            UpdateBackgroundTextureOpacity();
            UpdateBackgroundGradient();
            UpdateBackgroundTextureScaleWithSegments();
            UpdateBackgroundGradientEnabled();
            UpdateValueAsGradientTimeBackground();
            UpdatePulsateWhenLow();
            UpdatePulseActivationThreshold();
            UpdatePulseSpeed();
            UpdatePulseRamp();
            UpdatePulseColor();
            UpdateVariableWidthCurve();
            UpdateAdjustBorderRadiusToWidthCurve();
            UpdateSlant();
            UpdateFlipbookFPS();
            UpdateInnerFlipbookDim();
            UpdateOverlayFlipbookDim();
            UpdateBorderFlipbookDim();
            UpdateBackgroundFlipbookDim();
            UpdateValueMaskOffset();
            UpdateOffsetTextureWithValue();
            UpdateValueShadowColor();
            UpdateValueShadowSize();
            UpdateValueShadowFalloff();
            UpdateBorderShadowColor();
            UpdateBorderShadowSize();
            UpdateBorderShadowFalloff();
            UpdateValueInsetShadowColor();
            UpdateValueInsetShadowSize();
            UpdateValueInsetShadowFalloff();
            UpdateBorderInsetShadowColor();
            UpdateBorderInsetShadowSize();
            UpdateBorderInsetShadowFalloff();
        }

        #endregion
    }
}
