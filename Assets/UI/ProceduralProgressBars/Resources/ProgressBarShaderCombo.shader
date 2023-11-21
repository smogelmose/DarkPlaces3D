Shader "Renge/ProgressBarCombo"
{
	Properties
	{
		_Value("Value", Float) = 0.5
		[ToggleUI]_CenterFill("CenterFill", Float) = 0
		_BorderWidth("BorderWidth", Float) = 0.03
		_InnerBorderWidth("InnerBorderWidth", Float) = 0.02
		_BorderRadius("BorderRadius", Float) = 0.1
		_BorderRadiusOffset("BorderRadiusOffset", Vector) = (0, 0, 0, 0)
		_SegmentCount("SegmentCount", Float) = 1
		_SegmentSpacing("SegmentSpacing", Float) = 0
		_InnerRoundingPercent("InnerRoundingPercent", Float) = 1
		[MainColor][HDR]_InnerColor("InnerColor", Color) = (1, 0, 0, 1)
		[HDR]_BackgroundColor("BackgroundColor", Color) = (1, 1, 1, 1)
		[HDR]_BorderColor("BorderColor", Color) = (0, 0, 0, 1)
		[HDR]_InnerBorderColor("InnerBorderColor", Color) = (0.6603774, 0.009344946, 0.009344946, 1)
		[HDR]_OverlayColor("OverlayColor", Color) = (1, 1, 1, 1)
		[NoScaleOffset]_InnerTexture("InnerTexture", 2D) = "white" {}
		_InnerTextureOpacity("InnerTextureOpacity", Range(0, 1)) = 1
		_InnerTextureTiling("InnerTextureTiling", Vector) = (1, 1, 0, 0)
		_InnerTextureOffset("InnerTextureOffset", Vector) = (0, 0, 0, 0)
		_InnerTextureRotation("InnerTextureRotation", Float) = 0
		[NoScaleOffset]_InnerGradient("InnerGradient", 2D) = "white" {}
		[ToggleUI]_InnerGradientEnabled("InnerGradientEnabled", Float) = 0
		_InnerGradientRotation("InnerGradientRotation", Float) = 0
		[ToggleUI]_ValueAsGradientTimeInner("ValueAsGradientTimeInner", Float) = 0
		[NoScaleOffset]_OverlayTexture("OverlayTexture", 2D) = "white" {}
		_OverlayTextureOpacity("OverlayTextureOpacity", Range(0, 1)) = 1
		_OverlayTextureTiling("OverlayTextureTiling", Vector) = (1, 1, 0, 0)
		_OverlayTextureOffset("OverlayTextureOffset", Vector) = (0, 0, 0, 0)
		[NoScaleOffset]_BorderTexture("BorderTexture", 2D) = "white" {}
		_BorderTextureTiling("BorderTextureTiling", Vector) = (1, 1, 0, 0)
		_BorderTextureOffset("BorderTextureOffset", Vector) = (0, 0, 0, 0)
		_BorderTextureOpacity("BorderTextureOpacity", Range(0, 1)) = 1
		[NoScaleOffset]_BackgroundTexture("BackgroundTexture", 2D) = "white" {}
		_BackgroundTextureTiling("BackgroundTextureTiling", Vector) = (1, 1, 0, 0)
		_BackgroundTextureOffset("BackgroundTextureOffset", Vector) = (0, 0, 0, 0)
		_BackgroundGradientRotation("BackgroundGradientRotation", Float) = 0
		_BackgroundTextureOpacity("BackgroundTextureOpacity", Range(0, 1)) = 1
		[NoScaleOffset]_BackgroundGradient("BackgroundGradient", 2D) = "white" {}
		[ToggleUI]_BackgroundTextureScaleWithSegments("BackgroundTextureScaleWithSegments", Float) = 1
		[ToggleUI]_BackgroundGradientEnabled("BackgroundGradientEnabled", Float) = 0
		[ToggleUI]_ValueAsGradientTimeBackground("ValueAsGradientTimeBackground", Float) = 0
		[ToggleUI]_PulsateWhenLow("PulsateWhenLow", Float) = 0
		_PulseActivationThreshold("PulseActivationThreshold", Range(0, 1)) = 0.5
		_PulseSpeed("PulseSpeed", Float) = 10
		_PulseRamp("PulseRamp", Range(0, 1)) = 0.1
		[HDR]_PulseColor("PulseColor", Color) = (0, 0, 0, 1)
		[NoScaleOffset]_VariableWidthCurve("VariableWidthCurve", 2D) = "white" {}
		[ToggleUI]_AdjustBorderRadiusToWidthCurve("AdjustBorderRadiusToWidthCurve", Float) = 1
		_Slant("Slant", Float) = 0
		_FlipbookFPS("FlipbookFPS", Float) = 24
		_InnerFlipbookDim("InnerFlipbookDim", Vector) = (1, 1, 0, 0)
		_OverlayFlipbookDim("OverlayFlipbookDim", Vector) = (1, 1, 0, 0)
		_BorderFlipbookDim("BorderFlipbookDim", Vector) = (1, 1, 0, 0)
		_BackgroundFlipbookDim("BackgroundFlipbookDim", Vector) = (1, 1, 0, 0)
		_ValueMaskOffset("ValueMaskOffset", Vector) = (0, 0, 0, 0)
		[ToggleUI]_OffsetTextureWithValue("OffsetTextureWithValue", Float) = 1
		[HDR]_ValueShadowColor("ValueShadowColor", Color) = (0, 0, 0, 1)
		_ValueShadowSize("ValueShadowSize", Float) = 0.1
		_ValueShadowFalloff("ValueShadowFalloff", Float) = 0.99
		[HDR]_BorderShadowColor("BorderShadowColor", Color) = (0, 0, 0, 1)
		_BorderShadowSize("BorderShadowSize", Float) = 0.1
		_BorderShadowFalloff("BorderShadowFalloff", Float) = 0.99
		[HDR]_ValueInsetShadowColor("ValueInsetShadowColor", Color) = (0, 0, 0, 1)
		_ValueInsetShadowSize("ValueInsetShadowSize", Float) = 0.1
		_ValueInsetShadowFalloff("ValueInsetShadowFalloff", Float) = 0.99
		[HDR]_BorderInsetShadowColor("BorderInsetShadowColor", Color) = (0, 0, 0, 0)
		_BorderInsetShadowSize("BorderInsetShadowSize", Float) = 0.1
		_BorderInsetShadowFalloff("BorderInsetShadowFalloff", Float) = 0.99
		[NoScaleOffset]_MainTex("MainTex", 2D) = "white" {}
		[ToggleUI]_CircleScale("CircleScale", Float) = 1
		_Radius("Radius", Float) = 0.5
		_Arc("Arc", Float) = 0
		_Width("Width", Float) = 0.3
		_CircleLength("CircleLength", Float) = 1
		[ToggleUI]_UIScaling("UIScaling", Float) = 0
		_CustomScale("CustomScale", Vector) = (100,100,0,0)

		_Stencil("Ref", Float) = 0
		_StencilComp("Comp", Float) = 4
		_StencilOp("Pass", Float) = 0
		_StencilWriteMask("Stencil Write Mask", Float) = 0
		_StencilReadMask("Stencil Read Mask", Float) = 1
		_ColorMask("Color Mask", Float) = 15
		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip("Use Alpha Clip", Float) = 0

		/*[Toggle]INNER_TEXTURE("InnerTextureOn", Float) = 1
		[Toggle]OVERLAY_TEXTURE("OverlayTextureOn", Float) = 0
		[Toggle]BORDER_TEXTURE("BorderTextureOn", Float) = 1
		[Toggle]BACKGROUND_TEXTURE("BackgroundTextureOn", Float) = 1
		[KeywordEnum(Linear, Circular)]SHAPE("Shape", Float) = 0*/
	}
		SubShader
		{
			Tags
			{
				"RenderType" = "Transparent"
				"Queue" = "Transparent"
				"PreviewType" = "Plane"
				"DisableBatching" = "True"
			}

			LOD 200
			/*ZWrite Off
			Cull Off*/
			Blend SrcAlpha OneMinusSrcAlpha
			ZTest[unity_GUIZTestMode]

			

			Pass
			{
				Stencil
				{
					Ref [_Stencil]
					Comp[_StencilComp]
					Pass[_StencilOp]
					ReadMask[_StencilReadMask]
					WriteMask[_StencilWriteMask]
				}
				ColorMask[_ColorMask]

				CGPROGRAM

				#pragma vertex vert
				#pragma fragment frag
				#pragma multi_compile_local _ INNER_TEXTURE_ON
				#pragma multi_compile_local _ OVERLAY_TEXTURE_ON
				#pragma multi_compile_local _ BORDER_TEXTURE_ON
				#pragma multi_compile_local _ BACKGROUND_TEXTURE_ON
				#pragma multi_compile_local SHAPE_LINEAR SHAPE_CIRCULAR

				#include "UnityCG.cginc"
				#include "UnityUI.cginc"

				struct VertexIn
				{
					float4 vertex : POSITION;
					float2 uv : TEXCOORD0;
				};

				struct VertexOut
				{
					float2 uv : TEXCOORD0;
					float4 vertex : SV_POSITION;
				};

				float _Value;
				float _CenterFill;
				float _BorderWidth;
				float _InnerBorderWidth;
				float _BorderRadius;
				float4 _BorderRadiusOffset;
				float _SegmentCount;
				float _SegmentSpacing;
				float _InnerRoundingPercent;
				float4 _InnerColor;
				float4 _BackgroundColor;
				float4 _BorderColor;
				float4 _InnerBorderColor;
				float4 _OverlayColor;
				float _InnerTextureOpacity;
				float2 _InnerTextureTiling;
				float2 _InnerTextureOffset;
				float _InnerTextureRotation;
				float _InnerGradientEnabled;
				float _InnerGradientRotation;
				float _ValueAsGradientTimeInner;
				float _OverlayTextureOpacity;
				float2 _OverlayTextureTiling;
				float2 _OverlayTextureOffset;
				float2 _BorderTextureTiling;
				float2 _BorderTextureOffset;
				float _BorderTextureOpacity;
				float2 _BackgroundTextureTiling;
				float2 _BackgroundTextureOffset;
				float _BackgroundGradientRotation;
				float _BackgroundTextureOpacity;
				float _BackgroundTextureScaleWithSegments;
				float _BackgroundGradientEnabled;
				float _ValueAsGradientTimeBackground;
				float _PulsateWhenLow;
				float _PulseActivationThreshold;
				float _PulseSpeed;
				float _PulseRamp;
				float4 _PulseColor;
				float _AdjustBorderRadiusToWidthCurve;
				float _Slant;
				float _FlipbookFPS;
				float2 _InnerFlipbookDim;
				float2 _OverlayFlipbookDim;
				float2 _BorderFlipbookDim;
				float2 _BackgroundFlipbookDim;
				float2 _ValueMaskOffset;
				float _OffsetTextureWithValue;
				float4 _ValueShadowColor;
				float _ValueShadowSize;
				float _ValueShadowFalloff;
				float4 _BorderShadowColor;
				float _BorderShadowSize;
				float _BorderShadowFalloff;
				float4 _ValueInsetShadowColor;
				float _ValueInsetShadowSize;
				float _ValueInsetShadowFalloff;
				float4 _BorderInsetShadowColor;
				float _BorderInsetShadowSize;
				float _BorderInsetShadowFalloff;
				float4 _MainTex_TexelSize;
				float _CircleScale;
				float _Radius;
				float _Arc;
				float _Width;
				float _CircleLength;
				float _UIScaling;
				float4 _CustomScale;
				float4 _ClipRect;

				// Object and Global properties
				float Vector1_039a8f2619a54023a02095c1aa4326bb;
				float4 Vector4_2102e81594e64879ad2e9c5aa3d4475a;
				float Boolean_1c7e9d824d0f4b649367cf0a5c98f6c1;
				float _ScaleToVisible;
				float _Direction;
				float _SegmentBorder;
				float2 _PrimaryTickSize;
				float2 _SecondaryTickSize;
				float _PrimaryTickInterval;
				float _SecondaryTickInterval;
				float4 _PrimaryTickColor;
				float4 _SecondaryTickColor;
				sampler2D _InnerTexture;
				float _InnerTextureScaleWithSegments;
				sampler2D _InnerGradient;
				sampler2D _OverlayTexture;
				sampler2D _BorderTexture;
				float _BorderTextureScaleWithSegments;
				sampler2D _BackgroundTexture;
				sampler2D _BackgroundGradient;
				sampler2D _VariableWidthCurve;
				float _AntiAlias;
				float _ValueNoiseIntensity;
				float Vector1_584f1dfb499a4108902ac8d68d13a822;
				float2 _VirtualNoiseMovement;
				float _ValueNoise2Inensity;
				float _ValueNoise2Scale;
				float2 _ValueNoise2Movement;
				float _PixelCount;
				float _Pixelate;
				sampler2D _MainTex;
				float4 _MainTex_ST;

				// Graph Functions

				void Unity_Multiply_float(float A, float B, out float Out)
				{
					Out = A * B;
				}

				void Unity_Add_float(float A, float B, out float Out)
				{
					Out = A + B;
				}

				void Unity_TilingAndOffset_float(float2 UV, float2 Tiling, float2 Offset, out float2 Out)
				{
					Out = UV * Tiling + Offset;
				}

				void Unity_Maximum_float2(float2 A, float2 B, out float2 Out)
				{
					Out = max(A, B);
				}

				void Unity_Flipbook_InvertY_float(float2 UV, float Width, float Height, float Tile, float2 Invert, out float2 Out)
				{
					Tile = floor(fmod(Tile + 0.000001, Width * Height));
					float2 tileCount = float2(1.0, 1.0) / float2(Width, Height);
					float tileX = (Tile - Width * floor(Tile * tileCount.x));
					float tileY = (Invert.y * Height - (floor(Tile * tileCount.x) + Invert.y * 1));
					Out = (UV + float2(tileX, tileY)) * tileCount;
				}

				struct Bindings_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d
				{
					float3 TimeParameters;
				};

				void SG_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d(sampler2D Texture2D_1f898f0538304b9c80b0cd99fd61f2ee, float2 Vector2_c68c3bcca10f48d695d3de93473bcc02, float Vector1_9958645c53be4cc98b8bba5ecf852144, float Vector1_af46e7c09e894533a91dff64cba6fc8c, float Vector1_4c1182944ec04e85af36058ad67f4191, Bindings_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d IN, out float4 RGBA_0)
				{
					sampler2D _Property_172eadf8beb04b9e8e66df2eeec31f35_Out_0 = Texture2D_1f898f0538304b9c80b0cd99fd61f2ee;
					float2 _Property_d80a86f20e7e4b09b47d0d8d138c3580_Out_0 = Vector2_c68c3bcca10f48d695d3de93473bcc02;
					float _Property_40097d2dbeb04527857a646a3e4237e8_Out_0 = Vector1_af46e7c09e894533a91dff64cba6fc8c;
					float _Property_e025e861be1b4a21b4ec6b76a6d9fde6_Out_0 = Vector1_4c1182944ec04e85af36058ad67f4191;
					float _Property_54b32fda92fc4c0f9445ffe95b5259d9_Out_0 = Vector1_9958645c53be4cc98b8bba5ecf852144;
					float _Multiply_549133488b354ad4b7a83fe118858f20_Out_2;
					Unity_Multiply_float(_Property_54b32fda92fc4c0f9445ffe95b5259d9_Out_0, IN.TimeParameters.y, _Multiply_549133488b354ad4b7a83fe118858f20_Out_2);
					float2 _Flipbook_be3d3aac4e01461f9947491f1f39234c_Out_4;
					float2 _Flipbook_be3d3aac4e01461f9947491f1f39234c_Invert = float2 (0, 1);
					Unity_Flipbook_InvertY_float(_Property_d80a86f20e7e4b09b47d0d8d138c3580_Out_0, _Property_40097d2dbeb04527857a646a3e4237e8_Out_0, _Property_e025e861be1b4a21b4ec6b76a6d9fde6_Out_0, _Multiply_549133488b354ad4b7a83fe118858f20_Out_2, _Flipbook_be3d3aac4e01461f9947491f1f39234c_Invert, _Flipbook_be3d3aac4e01461f9947491f1f39234c_Out_4);
					float4 _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_RGBA_0 = tex2D(_Property_172eadf8beb04b9e8e66df2eeec31f35_Out_0, _Flipbook_be3d3aac4e01461f9947491f1f39234c_Out_4);
					float _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_R_4 = _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_RGBA_0.r;
					float _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_G_5 = _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_RGBA_0.g;
					float _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_B_6 = _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_RGBA_0.b;
					float _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_A_7 = _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_RGBA_0.a;
					RGBA_0 = _SampleTexture2D_38953182c3db4f1e8641d8e5ba609b7f_RGBA_0;
				}

				void Unity_Multiply_float(float4 A, float4 B, out float4 Out)
				{
					Out = A * B;
				}

				void Unity_Saturate_float(float In, out float Out)
				{
					Out = saturate(In);
				}

				void Unity_Lerp_float4(float4 A, float4 B, float4 T, out float4 Out)
				{
					Out = lerp(A, B, T);
				}

				void Unity_Ceiling_float(float In, out float Out)
				{
					Out = ceil(In);
				}

				void Unity_Clamp_float(float In, float Min, float Max, out float Out)
				{
					Out = clamp(In, Min, Max);
				}

				struct Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad
				{
				};

				void SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(float Vector1_9F401F58, float4 Vector4_FFE7F626, Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad IN, out float4 OutVector4_1)
				{
					float _Property_235a38e1e1b9f48399ae1dac5b1f871f_Out_0 = Vector1_9F401F58;
					float _Clamp_3d81bd6155b2968a9b10c8bc809c3c5f_Out_3;
					Unity_Clamp_float(_Property_235a38e1e1b9f48399ae1dac5b1f871f_Out_0, 0, 1, _Clamp_3d81bd6155b2968a9b10c8bc809c3c5f_Out_3);
					float4 _Property_fcf0b297fdb9af83981e27a5dbb20480_Out_0 = Vector4_FFE7F626;
					float _Split_61b1be483cb8cd82baa9c5338f68b0e5_R_1 = _Property_fcf0b297fdb9af83981e27a5dbb20480_Out_0[0];
					float _Split_61b1be483cb8cd82baa9c5338f68b0e5_G_2 = _Property_fcf0b297fdb9af83981e27a5dbb20480_Out_0[1];
					float _Split_61b1be483cb8cd82baa9c5338f68b0e5_B_3 = _Property_fcf0b297fdb9af83981e27a5dbb20480_Out_0[2];
					float _Split_61b1be483cb8cd82baa9c5338f68b0e5_A_4 = _Property_fcf0b297fdb9af83981e27a5dbb20480_Out_0[3];
					float _Multiply_c788e276ce530f8e9166d9339c43baa3_Out_2;
					Unity_Multiply_float(_Clamp_3d81bd6155b2968a9b10c8bc809c3c5f_Out_3, _Split_61b1be483cb8cd82baa9c5338f68b0e5_A_4, _Multiply_c788e276ce530f8e9166d9339c43baa3_Out_2);
					float4 _Multiply_64209158be4fbc8a91ed930b71422b04_Out_2;
					Unity_Multiply_float((_Multiply_c788e276ce530f8e9166d9339c43baa3_Out_2.xxxx), _Property_fcf0b297fdb9af83981e27a5dbb20480_Out_0, _Multiply_64209158be4fbc8a91ed930b71422b04_Out_2);
					OutVector4_1 = _Multiply_64209158be4fbc8a91ed930b71422b04_Out_2;
				}

				void Unity_Branch_float(float Predicate, float True, float False, out float Out)
				{
					Out = Predicate ? True : False;
				}

				void Unity_Add_float2(float2 A, float2 B, out float2 Out)
				{
					Out = A + B;
				}

				void Unity_Divide_float(float A, float B, out float Out)
				{
					Out = A / B;
				}

				void Unity_Negate_float(float In, out float Out)
				{
					Out = -1 * In;
				}

				void Unity_Comparison_Equal_float(float A, float B, out float Out)
				{
					Out = A == B ? 1 : 0;
				}

				void Unity_OneMinus_float(float In, out float Out)
				{
					Out = 1 - In;
				}

				void Unity_Subtract_float(float A, float B, out float Out)
				{
					Out = A - B;
				}

				struct Bindings_Constants_51523206c5b65d54da712ebfc55b41f9
				{
				};

				void SG_Constants_51523206c5b65d54da712ebfc55b41f9(Bindings_Constants_51523206c5b65d54da712ebfc55b41f9 IN, out float PI_1, out float Tau_2)
				{
					PI_1 = 3.141593;
					Tau_2 = 6.283185;
				}

				struct Bindings_CircleSize_c061357d2877b5046b04d83f9968414a
				{
					half2 uv;
				};

				void SG_CircleSize_c061357d2877b5046b04d83f9968414a(float Vector1_ad32dfdca8994967be7f2eb171aa1d61, float Vector1_4f1f1d9db24c48829edb85d51999c01e, float Vector1_c5cc22e83b5446c79147cb5243f90147, float Vector1_fc7d6c09c8654c00af2f762680c236a7, Bindings_CircleSize_c061357d2877b5046b04d83f9968414a IN, out float Length_1)
				{
					float _Property_1b1b9396b9114a2b89121e8bfcc870f6_Out_0 = Vector1_c5cc22e83b5446c79147cb5243f90147;
					float _OneMinus_f9e893e0479e47909133811b19527e83_Out_1;
					Unity_OneMinus_float(_Property_1b1b9396b9114a2b89121e8bfcc870f6_Out_0, _OneMinus_f9e893e0479e47909133811b19527e83_Out_1);
					float _Saturate_9a400d03ac28405c8e3c17d14a79d133_Out_1;
					Unity_Saturate_float(_OneMinus_f9e893e0479e47909133811b19527e83_Out_1, _Saturate_9a400d03ac28405c8e3c17d14a79d133_Out_1);
					float2 _TilingAndOffset_aa72446fd3f84c32bc76896de0dbd72f_Out_3;
					Unity_TilingAndOffset_float(IN.uv, float2 (1, 1), float2 (0, 0), _TilingAndOffset_aa72446fd3f84c32bc76896de0dbd72f_Out_3);
					float _Split_55363e26b44245049a4d4a9cf4ec3e32_R_1 = _TilingAndOffset_aa72446fd3f84c32bc76896de0dbd72f_Out_3[0];
					float _Split_55363e26b44245049a4d4a9cf4ec3e32_G_2 = _TilingAndOffset_aa72446fd3f84c32bc76896de0dbd72f_Out_3[1];
					float _Split_55363e26b44245049a4d4a9cf4ec3e32_B_3 = 0;
					float _Split_55363e26b44245049a4d4a9cf4ec3e32_A_4 = 0;
					float _Property_6c18c702ed7a4533ab9369908df756af_Out_0 = Vector1_4f1f1d9db24c48829edb85d51999c01e;
					float _Multiply_d12613519a2c4e9aac9778d264a7d25d_Out_2;
					Unity_Multiply_float(_Split_55363e26b44245049a4d4a9cf4ec3e32_G_2, _Property_6c18c702ed7a4533ab9369908df756af_Out_0, _Multiply_d12613519a2c4e9aac9778d264a7d25d_Out_2);
					float _Property_913f7c5055b84467bcba73572503459f_Out_0 = Vector1_ad32dfdca8994967be7f2eb171aa1d61;
					float _Divide_c8f707499aed40949c6be84bd30e302a_Out_2;
					Unity_Divide_float(_Property_6c18c702ed7a4533ab9369908df756af_Out_0, 2, _Divide_c8f707499aed40949c6be84bd30e302a_Out_2);
					float _Subtract_580b0840ec4848c99ccb3e1920bc48b7_Out_2;
					Unity_Subtract_float(_Property_913f7c5055b84467bcba73572503459f_Out_0, _Divide_c8f707499aed40949c6be84bd30e302a_Out_2, _Subtract_580b0840ec4848c99ccb3e1920bc48b7_Out_2);
					float _Add_4b619b177772475aac31e078718cbc9e_Out_2;
					Unity_Add_float(_Multiply_d12613519a2c4e9aac9778d264a7d25d_Out_2, _Subtract_580b0840ec4848c99ccb3e1920bc48b7_Out_2, _Add_4b619b177772475aac31e078718cbc9e_Out_2);
					Bindings_Constants_51523206c5b65d54da712ebfc55b41f9 _Constants_b9f5386e208645239d214abe1ede9c78;
					float _Constants_b9f5386e208645239d214abe1ede9c78_PI_1;
					float _Constants_b9f5386e208645239d214abe1ede9c78_Tau_2;
					SG_Constants_51523206c5b65d54da712ebfc55b41f9(_Constants_b9f5386e208645239d214abe1ede9c78, _Constants_b9f5386e208645239d214abe1ede9c78_PI_1, _Constants_b9f5386e208645239d214abe1ede9c78_Tau_2);
					float _Property_045a460ec28844eca02cf4cd02450e88_Out_0 = Vector1_fc7d6c09c8654c00af2f762680c236a7;
					float _Multiply_09007e7fd5df4c5aae981810314fcb5a_Out_2;
					Unity_Multiply_float(_Constants_b9f5386e208645239d214abe1ede9c78_Tau_2, _Property_045a460ec28844eca02cf4cd02450e88_Out_0, _Multiply_09007e7fd5df4c5aae981810314fcb5a_Out_2);
					float _Multiply_ea9173ae220f45108baa9f3ddd1b8ca4_Out_2;
					Unity_Multiply_float(_Add_4b619b177772475aac31e078718cbc9e_Out_2, _Multiply_09007e7fd5df4c5aae981810314fcb5a_Out_2, _Multiply_ea9173ae220f45108baa9f3ddd1b8ca4_Out_2);
					float _Multiply_3caccc172fee48b5beeea44adaf6c3b9_Out_2;
					Unity_Multiply_float(_Saturate_9a400d03ac28405c8e3c17d14a79d133_Out_1, _Multiply_ea9173ae220f45108baa9f3ddd1b8ca4_Out_2, _Multiply_3caccc172fee48b5beeea44adaf6c3b9_Out_2);
					Length_1 = _Multiply_3caccc172fee48b5beeea44adaf6c3b9_Out_2;
				}

				void Unity_Branch_float3(float Predicate, float3 True, float3 False, out float3 Out)
				{
					Out = Predicate ? True : False;
				}

				struct Bindings_ObjectScale_45d3a2024b3aace4f89e012df31ccd48
				{
				};

				void SG_ObjectScale_45d3a2024b3aace4f89e012df31ccd48(float Boolean_615e97b6da1f45a18df7c9532d15ba29, float3 Vector3_7c0dfbb1d0de480493bca8d64b92c8ad, Bindings_ObjectScale_45d3a2024b3aace4f89e012df31ccd48 IN, out float3 Scale_2, out float2 Scale_2D_4, out float X_5, out float Y_6, out float Z_7)
				{
					float _Property_edda2e67b0ae4579be86f4bc2362785c_Out_0 = Boolean_615e97b6da1f45a18df7c9532d15ba29;
					float3 _Property_18ab05760b9d43c4ab93ad2bbf42ee5c_Out_0 = Vector3_7c0dfbb1d0de480493bca8d64b92c8ad;
					float3 _Branch_d4fcfbc7f02c48519227f0e51e11caf9_Out_3;
					Unity_Branch_float3(_Property_edda2e67b0ae4579be86f4bc2362785c_Out_0, _Property_18ab05760b9d43c4ab93ad2bbf42ee5c_Out_0, float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z))), _Branch_d4fcfbc7f02c48519227f0e51e11caf9_Out_3);
					float _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_R_1 = _Branch_d4fcfbc7f02c48519227f0e51e11caf9_Out_3[0];
					float _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_G_2 = _Branch_d4fcfbc7f02c48519227f0e51e11caf9_Out_3[1];
					float _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_B_3 = _Branch_d4fcfbc7f02c48519227f0e51e11caf9_Out_3[2];
					float _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_A_4 = 0;
					float2 _Vector2_f2b13026bd2045c38e4065d219a4ed93_Out_0 = float2(_Split_ebf1ea1e16644e7e8babf3d7622f8ae0_R_1, _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_G_2);
					Scale_2 = _Branch_d4fcfbc7f02c48519227f0e51e11caf9_Out_3;
					Scale_2D_4 = _Vector2_f2b13026bd2045c38e4065d219a4ed93_Out_0;
					X_5 = _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_R_1;
					Y_6 = _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_G_2;
					Z_7 = _Split_ebf1ea1e16644e7e8babf3d7622f8ae0_B_3;
				}

				void Unity_Rotate_Degrees_float(float2 UV, float2 Center, float Rotation, out float2 Out)
				{
					//rotation matrix
					Rotation = Rotation * (3.1415926f / 180.0f);
					UV -= Center;
					float s = sin(Rotation);
					float c = cos(Rotation);

					//center rotation matrix
					float2x2 rMatrix = float2x2(c, -s, s, c);
					rMatrix *= 0.5;
					rMatrix += 0.5;
					rMatrix = rMatrix * 2 - 1;

					//multiply the UVs by the rotation matrix
					UV.xy = mul(UV.xy, rMatrix);
					UV += Center;

					Out = UV;
				}

				void Unity_Branch_float2(float Predicate, float2 True, float2 False, out float2 Out)
				{
					Out = Predicate ? True : False;
				}

				void Unity_Branch_float4(float Predicate, float4 True, float4 False, out float4 Out)
				{
					Out = Predicate ? True : False;
				}

				void Unity_Modulo_float(float A, float B, out float Out)
				{
					Out = fmod(A, B);
				}

				void Unity_Rotate_Radians_float(float2 UV, float2 Center, float Rotation, out float2 Out)
				{
					//rotation matrix
					UV -= Center;
					float s = sin(Rotation);
					float c = cos(Rotation);

					//center rotation matrix
					float2x2 rMatrix = float2x2(c, -s, s, c);
					rMatrix *= 0.5;
					rMatrix += 0.5;
					rMatrix = rMatrix * 2 - 1;

					//multiply the UVs by the rotation matrix
					UV.xy = mul(UV.xy, rMatrix);
					UV += Center;

					Out = UV;
				}

				void Unity_Sine_float(float In, out float Out)
				{
					Out = sin(In);
				}

				void Unity_InverseLerp_float(float A, float B, float T, out float Out)
				{
					Out = (T - A) / (B - A);
				}

				void Unity_Remap_float(float In, float2 InMinMax, float2 OutMinMax, out float Out)
				{
					Out = OutMinMax.x + (In - InMinMax.x) * (OutMinMax.y - OutMinMax.x) / (InMinMax.y - InMinMax.x);
				}

				void Unity_Minimum_float(float A, float B, out float Out)
				{
					Out = min(A, B);
				};

				void Unity_Floor_float(float In, out float Out)
				{
					Out = floor(In);
				}

				void Unity_Step_float(float Edge, float In, out float Out)
				{
					Out = step(Edge, In);
				}

				void Unity_Lerp_float(float A, float B, float T, out float Out)
				{
					Out = lerp(A, B, T);
				}

				void Unity_And_float(float A, float B, out float Out)
				{
					Out = A && B;
				}

				void Unity_Maximum_float(float A, float B, out float Out)
				{
					Out = max(A, B);
				}

				void Unity_Preview_float(float In, out float Out)
				{
					Out = In;
				}

				struct Bindings_UVDirection_9781a1b10e5f3d04089f2ceacd0a0f8d
				{
				};

				void SG_UVDirection_9781a1b10e5f3d04089f2ceacd0a0f8d(float2 Vector2_ace71bda868a481b8b53f450d61363eb, float Boolean_b33940861ba341b4a2dbad1827db7719, float Boolean_580a81a89d50435d83f610a7cf63d61e, Bindings_UVDirection_9781a1b10e5f3d04089f2ceacd0a0f8d IN, out float2 UV_1)
				{
					float _Property_9f2b8f4e13d74e5b9defaa821f00888e_Out_0 = Boolean_b33940861ba341b4a2dbad1827db7719;
					float2 _Property_a16f7015b150496da8d81750834081e7_Out_0 = Vector2_ace71bda868a481b8b53f450d61363eb;
					float _Split_5d61a892c7b84406a9bce9da1adacec6_R_1 = _Property_a16f7015b150496da8d81750834081e7_Out_0[0];
					float _Split_5d61a892c7b84406a9bce9da1adacec6_G_2 = _Property_a16f7015b150496da8d81750834081e7_Out_0[1];
					float _Split_5d61a892c7b84406a9bce9da1adacec6_B_3 = 0;
					float _Split_5d61a892c7b84406a9bce9da1adacec6_A_4 = 0;
					float _Multiply_4df1fa193eff4cc38c7c147f9f2061d8_Out_2;
					Unity_Multiply_float(_Split_5d61a892c7b84406a9bce9da1adacec6_R_1, -1, _Multiply_4df1fa193eff4cc38c7c147f9f2061d8_Out_2);
					float _Add_7bfcc4f0404846a8a14534e3bbed3db7_Out_2;
					Unity_Add_float(_Multiply_4df1fa193eff4cc38c7c147f9f2061d8_Out_2, 1, _Add_7bfcc4f0404846a8a14534e3bbed3db7_Out_2);
					float _Preview_a1d5b69bb23e40b5b0eae58b0f25ddb8_Out_1;
					Unity_Preview_float(_Split_5d61a892c7b84406a9bce9da1adacec6_R_1, _Preview_a1d5b69bb23e40b5b0eae58b0f25ddb8_Out_1);
					float _Branch_698f88d419df4079a76e690b95c66484_Out_3;
					Unity_Branch_float(_Property_9f2b8f4e13d74e5b9defaa821f00888e_Out_0, _Add_7bfcc4f0404846a8a14534e3bbed3db7_Out_2, _Preview_a1d5b69bb23e40b5b0eae58b0f25ddb8_Out_1, _Branch_698f88d419df4079a76e690b95c66484_Out_3);
					float _Property_e19b016d1f2948a6b6596c5c1ea99cf7_Out_0 = Boolean_580a81a89d50435d83f610a7cf63d61e;
					float _Multiply_d79280a6ec314a658737f8dc0c40caea_Out_2;
					Unity_Multiply_float(_Split_5d61a892c7b84406a9bce9da1adacec6_G_2, -1, _Multiply_d79280a6ec314a658737f8dc0c40caea_Out_2);
					float _Add_c6ec27e72ad4439d889e3d312a4d3540_Out_2;
					Unity_Add_float(_Multiply_d79280a6ec314a658737f8dc0c40caea_Out_2, 1, _Add_c6ec27e72ad4439d889e3d312a4d3540_Out_2);
					float _Preview_bc02f86aee3444ac9d9b611b6af97f74_Out_1;
					Unity_Preview_float(_Split_5d61a892c7b84406a9bce9da1adacec6_G_2, _Preview_bc02f86aee3444ac9d9b611b6af97f74_Out_1);
					float _Branch_85a2e37b55724b6299d73b033269e053_Out_3;
					Unity_Branch_float(_Property_e19b016d1f2948a6b6596c5c1ea99cf7_Out_0, _Add_c6ec27e72ad4439d889e3d312a4d3540_Out_2, _Preview_bc02f86aee3444ac9d9b611b6af97f74_Out_1, _Branch_85a2e37b55724b6299d73b033269e053_Out_3);
					float2 _Vector2_943775b0e41140f093a8d7adb9439b36_Out_0 = float2(_Branch_698f88d419df4079a76e690b95c66484_Out_3, _Branch_85a2e37b55724b6299d73b033269e053_Out_3);
					UV_1 = _Vector2_943775b0e41140f093a8d7adb9439b36_Out_0;
				}

				void Unity_Multiply_float(float3 A, float3 B, out float3 Out)
				{
					Out = A * B;
				}

				void Unity_Floor_float3(float3 In, out float3 Out)
				{
					Out = floor(In);
				}

				void Unity_Subtract_float3(float3 A, float3 B, out float3 Out)
				{
					Out = A - B;
				}

				void Unity_Divide_float3(float3 A, float3 B, out float3 Out)
				{
					Out = A / B;
				}

				struct Bindings_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe
				{
					half2 uv;
				};

				void SG_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe(float Boolean_918bfb8df57a4fbcaafe03d86ba759c1, float Vector1_8e0082fdd0ae4a45b6a97cdd302a17ba, Bindings_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe IN, out float2 OutVector2_1)
				{
					float _Property_f74f4d0ed8074f8f864401db70f3b98a_Out_0 = Boolean_918bfb8df57a4fbcaafe03d86ba759c1;
					float2 _UV_f60fb896ded841f8a80a0139cddc8895_Out_0 = IN.uv;
					float _Property_c508f8a1d63c48d98a970640feb86762_Out_0 = Vector1_8e0082fdd0ae4a45b6a97cdd302a17ba;
					float _Floor_2f330dc7c0964f25aed521db8c75e629_Out_1;
					Unity_Floor_float(_Property_c508f8a1d63c48d98a970640feb86762_Out_0, _Floor_2f330dc7c0964f25aed521db8c75e629_Out_1);
					float3 _Multiply_d09c1094b83e4559953fe596592500ef_Out_2;
					Unity_Multiply_float((_Floor_2f330dc7c0964f25aed521db8c75e629_Out_1.xxx), float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z))), _Multiply_d09c1094b83e4559953fe596592500ef_Out_2);
					float3 _Multiply_0fea3f0a2ebe4a3a84878264755a5770_Out_2;
					Unity_Multiply_float((_UV_f60fb896ded841f8a80a0139cddc8895_Out_0.xyy), _Multiply_d09c1094b83e4559953fe596592500ef_Out_2, _Multiply_0fea3f0a2ebe4a3a84878264755a5770_Out_2);
					float3 _Floor_864f24b3e3a54ed2abc427e40d7e2f3a_Out_1;
					Unity_Floor_float3(_Multiply_0fea3f0a2ebe4a3a84878264755a5770_Out_2, _Floor_864f24b3e3a54ed2abc427e40d7e2f3a_Out_1);
					float3 _Subtract_1816f2c50b88457a8ca0c00f429d417b_Out_2;
					Unity_Subtract_float3(_Multiply_d09c1094b83e4559953fe596592500ef_Out_2, float3(1, 1, 1), _Subtract_1816f2c50b88457a8ca0c00f429d417b_Out_2);
					float3 _Divide_6b3fc711d00b4f42bacc12cbd9985710_Out_2;
					Unity_Divide_float3(_Floor_864f24b3e3a54ed2abc427e40d7e2f3a_Out_1, _Subtract_1816f2c50b88457a8ca0c00f429d417b_Out_2, _Divide_6b3fc711d00b4f42bacc12cbd9985710_Out_2);
					float2 _UV_7018734371434e298ed7e89e90f6a24a_Out_0 = IN.uv;
					float3 _Branch_8936ecf703ae443b93ab1c9549c419fa_Out_3;
					Unity_Branch_float3(_Property_f74f4d0ed8074f8f864401db70f3b98a_Out_0, _Divide_6b3fc711d00b4f42bacc12cbd9985710_Out_2, (_UV_7018734371434e298ed7e89e90f6a24a_Out_0.xyy), _Branch_8936ecf703ae443b93ab1c9549c419fa_Out_3);
					OutVector2_1 = (_Branch_8936ecf703ae443b93ab1c9549c419fa_Out_3.xy);
				}

				void Unity_Negate_float3(float3 In, out float3 Out)
				{
					Out = -1 * In;
				}

				struct Bindings_ScaleAdjustedUV_827f1038dd5dd934a8c15acd213771a9
				{
					half2 uv;
				};

				void SG_ScaleAdjustedUV_827f1038dd5dd934a8c15acd213771a9(float Boolean_8193207cad4d4f5a9e3e31d765814af4, float3 Vector3_7912c4d5d7c944a4ae072483e6000cae, float Boolean_87b08c833ff5406a8d6e99817202be4c, float2 Vector2_76f12275f6b744bcae2f0fc73822b221, float Boolean_e8cd21efbb5e43198176fbe5f80ea7cb, float Boolean_b9e7eef4b7914082b4f8452e5ecaacdf, Bindings_ScaleAdjustedUV_827f1038dd5dd934a8c15acd213771a9 IN, out float2 UV_1, out float2 Scalel_2)
				{
					float _Property_1aedf856d07244b0805e50eaa07fb306_Out_0 = Boolean_87b08c833ff5406a8d6e99817202be4c;
					float2 _UV_54e7a1e3384e47dd82bb67e13907612c_Out_0 = IN.uv;
					float2 _Property_d0c6bfa5a0a943dcb7fcb06ecc211ba1_Out_0 = Vector2_76f12275f6b744bcae2f0fc73822b221;
					float2 _Branch_cf9534b236634b63ba6224648da82d9d_Out_3;
					Unity_Branch_float2(_Property_1aedf856d07244b0805e50eaa07fb306_Out_0, (_UV_54e7a1e3384e47dd82bb67e13907612c_Out_0.xy), _Property_d0c6bfa5a0a943dcb7fcb06ecc211ba1_Out_0, _Branch_cf9534b236634b63ba6224648da82d9d_Out_3);
					float _Property_a454febe1bd64028a7d75e3d6aa3d2af_Out_0 = Boolean_8193207cad4d4f5a9e3e31d765814af4;
					float3 _Property_5e4206df23db4371b607e92887f07717_Out_0 = Vector3_7912c4d5d7c944a4ae072483e6000cae;
					Bindings_ObjectScale_45d3a2024b3aace4f89e012df31ccd48 _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b;
					float3 _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Scale_2;
					float2 _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Scale2D_4;
					float _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_X_5;
					float _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Y_6;
					float _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Z_7;
					SG_ObjectScale_45d3a2024b3aace4f89e012df31ccd48(_Property_a454febe1bd64028a7d75e3d6aa3d2af_Out_0, _Property_5e4206df23db4371b607e92887f07717_Out_0, _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b, _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Scale_2, _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Scale2D_4, _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_X_5, _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Y_6, _ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Z_7);
					float _Property_b4bae5cc3ca64640a09c2b79ee2fe944_Out_0 = Boolean_e8cd21efbb5e43198176fbe5f80ea7cb;
					float3 _Divide_90a7050b40e24cacac8b2fc6ebbaa95e_Out_2;
					Unity_Divide_float3(_ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Scale_2, float3(2, 2, 1), _Divide_90a7050b40e24cacac8b2fc6ebbaa95e_Out_2);
					float3 _Negate_0cde4531d9df47258e2f4bf5391418e1_Out_1;
					Unity_Negate_float3(_Divide_90a7050b40e24cacac8b2fc6ebbaa95e_Out_2, _Negate_0cde4531d9df47258e2f4bf5391418e1_Out_1);
					float _Split_75ba23f8e62e48fcba437628c8a51646_R_1 = _Negate_0cde4531d9df47258e2f4bf5391418e1_Out_1[0];
					float _Split_75ba23f8e62e48fcba437628c8a51646_G_2 = _Negate_0cde4531d9df47258e2f4bf5391418e1_Out_1[1];
					float _Split_75ba23f8e62e48fcba437628c8a51646_B_3 = _Negate_0cde4531d9df47258e2f4bf5391418e1_Out_1[2];
					float _Split_75ba23f8e62e48fcba437628c8a51646_A_4 = 0;
					float _Branch_c611488d2f0b4a72a7feda8f8c38f31a_Out_3;
					Unity_Branch_float(_Property_b4bae5cc3ca64640a09c2b79ee2fe944_Out_0, _Split_75ba23f8e62e48fcba437628c8a51646_R_1, 0, _Branch_c611488d2f0b4a72a7feda8f8c38f31a_Out_3);
					float _Property_0e74e2975526433b879b61c528230dc7_Out_0 = Boolean_b9e7eef4b7914082b4f8452e5ecaacdf;
					float _Branch_48bd4f76a3e8421f9fdfe10d45948c8a_Out_3;
					Unity_Branch_float(_Property_0e74e2975526433b879b61c528230dc7_Out_0, _Split_75ba23f8e62e48fcba437628c8a51646_G_2, 0, _Branch_48bd4f76a3e8421f9fdfe10d45948c8a_Out_3);
					float2 _Vector2_12fe277f7cb74473a598efd37127afc9_Out_0 = float2(_Branch_c611488d2f0b4a72a7feda8f8c38f31a_Out_3, _Branch_48bd4f76a3e8421f9fdfe10d45948c8a_Out_3);
					float2 _TilingAndOffset_cd10746e5c5946dc974ba140bc3d5cec_Out_3;
					Unity_TilingAndOffset_float(_Branch_cf9534b236634b63ba6224648da82d9d_Out_3, (_ObjectScale_a7d16d706b0349dc8c176c3191c76b9b_Scale_2.xy), _Vector2_12fe277f7cb74473a598efd37127afc9_Out_0, _TilingAndOffset_cd10746e5c5946dc974ba140bc3d5cec_Out_3);
					float _Property_4fb1a28edb5a4d6abbc4703b9cbd5a2b_Out_0 = Boolean_8193207cad4d4f5a9e3e31d765814af4;
					float3 _Property_80c1077dbe4647019656df9e454c2e97_Out_0 = Vector3_7912c4d5d7c944a4ae072483e6000cae;
					Bindings_ObjectScale_45d3a2024b3aace4f89e012df31ccd48 _ObjectScale_44ba662d0503403aa7df4f5e67d7be45;
					float3 _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Scale_2;
					float2 _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Scale2D_4;
					float _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_X_5;
					float _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Y_6;
					float _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Z_7;
					SG_ObjectScale_45d3a2024b3aace4f89e012df31ccd48(_Property_4fb1a28edb5a4d6abbc4703b9cbd5a2b_Out_0, _Property_80c1077dbe4647019656df9e454c2e97_Out_0, _ObjectScale_44ba662d0503403aa7df4f5e67d7be45, _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Scale_2, _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Scale2D_4, _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_X_5, _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Y_6, _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Z_7);
					UV_1 = _TilingAndOffset_cd10746e5c5946dc974ba140bc3d5cec_Out_3;
					Scalel_2 = _ObjectScale_44ba662d0503403aa7df4f5e67d7be45_Scale2D_4;
				}

				void Unity_Modulo_float2(float2 A, float2 B, out float2 Out)
				{
					Out = fmod(A, B);
				}

				void Unity_Divide_float2(float2 A, float2 B, out float2 Out)
				{
					Out = A / B;
				}

				void Unity_Subtract_float2(float2 A, float2 B, out float2 Out)
				{
					Out = A - B;
				}

				struct Bindings_TileUV_f6e3cfbe2653c6241b6827122eeef41c
				{
					half2 uv;
				};

				void SG_TileUV_f6e3cfbe2653c6241b6827122eeef41c(float Boolean_34e867c0afff4c19aa1f9dbd5365873b, float2 Vector2_bc12decfb74447b8ad4d4a9644fd87e5, float Boolean_a65d9572687447c4969eda0448d6795d, float Boolean_22c0e60cc87c4664b8a97b5ab70d4959, float2 Vector2_955c00fd0b10495aa6761ef7d9a4b3a0, Bindings_TileUV_f6e3cfbe2653c6241b6827122eeef41c IN, out float2 UV_1)
				{
					float _Property_4a9d9fa4fbe24ab98243849d8829159c_Out_0 = Boolean_a65d9572687447c4969eda0448d6795d;
					float _Property_1f6a7bbe48514c0eb6f92035ec5e0a98_Out_0 = Boolean_34e867c0afff4c19aa1f9dbd5365873b;
					float2 _TilingAndOffset_10af530590544e43b1fd6f3195080bfc_Out_3;
					Unity_TilingAndOffset_float(IN.uv, float2 (1, 1), float2 (0, 0), _TilingAndOffset_10af530590544e43b1fd6f3195080bfc_Out_3);
					float2 _Property_7b1db0cdb767491293fa740a193cf580_Out_0 = Vector2_bc12decfb74447b8ad4d4a9644fd87e5;
					float2 _Branch_8f78d0731f6c4ec98245d692abeba981_Out_3;
					Unity_Branch_float2(_Property_1f6a7bbe48514c0eb6f92035ec5e0a98_Out_0, _TilingAndOffset_10af530590544e43b1fd6f3195080bfc_Out_3, _Property_7b1db0cdb767491293fa740a193cf580_Out_0, _Branch_8f78d0731f6c4ec98245d692abeba981_Out_3);
					float2 _Property_aed2131824764664860503ceb12eb8b2_Out_0 = Vector2_955c00fd0b10495aa6761ef7d9a4b3a0;
					float2 _Modulo_ef0f006da51347119bf1c8f212892bb1_Out_2;
					Unity_Modulo_float2(_Branch_8f78d0731f6c4ec98245d692abeba981_Out_3, _Property_aed2131824764664860503ceb12eb8b2_Out_0, _Modulo_ef0f006da51347119bf1c8f212892bb1_Out_2);
					float2 _Divide_8f9be9741f614f269c13789d40bfa824_Out_2;
					Unity_Divide_float2(_Property_aed2131824764664860503ceb12eb8b2_Out_0, float2(2, 2), _Divide_8f9be9741f614f269c13789d40bfa824_Out_2);
					float2 _Subtract_241dacdd169049fdb33113d951069d2d_Out_2;
					Unity_Subtract_float2(_Modulo_ef0f006da51347119bf1c8f212892bb1_Out_2, _Divide_8f9be9741f614f269c13789d40bfa824_Out_2, _Subtract_241dacdd169049fdb33113d951069d2d_Out_2);
					float _Split_ca0f581a5ac648e5b98e5f1bbca40c8a_R_1 = _Subtract_241dacdd169049fdb33113d951069d2d_Out_2[0];
					float _Split_ca0f581a5ac648e5b98e5f1bbca40c8a_G_2 = _Subtract_241dacdd169049fdb33113d951069d2d_Out_2[1];
					float _Split_ca0f581a5ac648e5b98e5f1bbca40c8a_B_3 = 0;
					float _Split_ca0f581a5ac648e5b98e5f1bbca40c8a_A_4 = 0;
					float _Split_9b9df58dc340465fb830e538e2f0fb7d_R_1 = _Modulo_ef0f006da51347119bf1c8f212892bb1_Out_2[0];
					float _Split_9b9df58dc340465fb830e538e2f0fb7d_G_2 = _Modulo_ef0f006da51347119bf1c8f212892bb1_Out_2[1];
					float _Split_9b9df58dc340465fb830e538e2f0fb7d_B_3 = 0;
					float _Split_9b9df58dc340465fb830e538e2f0fb7d_A_4 = 0;
					float _Branch_12781c004d1b412b80a70f7b6b59cda3_Out_3;
					Unity_Branch_float(_Property_4a9d9fa4fbe24ab98243849d8829159c_Out_0, _Split_ca0f581a5ac648e5b98e5f1bbca40c8a_R_1, _Split_9b9df58dc340465fb830e538e2f0fb7d_R_1, _Branch_12781c004d1b412b80a70f7b6b59cda3_Out_3);
					float _Property_e8b91b43ef7b4b0c86a5ec3b3bbed433_Out_0 = Boolean_22c0e60cc87c4664b8a97b5ab70d4959;
					float _Branch_d9c11926c42c452b91861db994401e52_Out_3;
					Unity_Branch_float(_Property_e8b91b43ef7b4b0c86a5ec3b3bbed433_Out_0, _Split_ca0f581a5ac648e5b98e5f1bbca40c8a_G_2, _Split_9b9df58dc340465fb830e538e2f0fb7d_G_2, _Branch_d9c11926c42c452b91861db994401e52_Out_3);
					float2 _Vector2_1f24f0dbab584ccbb91eee3fe5800563_Out_0 = float2(_Branch_12781c004d1b412b80a70f7b6b59cda3_Out_3, _Branch_d9c11926c42c452b91861db994401e52_Out_3);
					UV_1 = _Vector2_1f24f0dbab584ccbb91eee3fe5800563_Out_0;
				}

				void Unity_Multiply_float(float2 A, float2 B, out float2 Out)
				{
					Out = A * B;
				}

				void Unity_Absolute_float2(float2 In, out float2 Out)
				{
					Out = abs(In);
				}

				void Unity_Comparison_Greater_float(float A, float B, out float Out)
				{
					Out = A > B ? 1 : 0;
				}

				void Unity_Add_float4(float4 A, float4 B, out float4 Out)
				{
					Out = A + B;
				}

				void Unity_Length_float2(float2 In, out float Out)
				{
					Out = length(In);
				}

				struct Bindings_RectangleSDF_d6d1ac88d8e9cf8409879cf775331adb
				{
					half2 uv;
				};

				void SG_RectangleSDF_d6d1ac88d8e9cf8409879cf775331adb(float Boolean_dffbf2b3b64142bf962b732d35acca80, float2 Vector2_da9e29fcca554d95b2d664ed3663d75c, float Vector1_21fcbe9f35924720bf3477401fa27c66, float4 Vector4_53714d1d0ac1424b915bb501bcefb1b5, float2 Vector2_d6fead635aeb487ab75a4e27239bcfce, Bindings_RectangleSDF_d6d1ac88d8e9cf8409879cf775331adb IN, out float SDF_1)
				{
					float _Property_c66cbf467ee248c6a500fd0b0eaceb54_Out_0 = Boolean_dffbf2b3b64142bf962b732d35acca80;
					Bindings_ScaleAdjustedUV_827f1038dd5dd934a8c15acd213771a9 _ScaleAdjustedUV_faa313edae6f4053979855999b09e160;
					_ScaleAdjustedUV_faa313edae6f4053979855999b09e160.uv = IN.uv;
					float2 _ScaleAdjustedUV_faa313edae6f4053979855999b09e160_UV_1;
					float2 _ScaleAdjustedUV_faa313edae6f4053979855999b09e160_Scalel_2;
					SG_ScaleAdjustedUV_827f1038dd5dd934a8c15acd213771a9(0, float3 (0, 0, 0), 1, float2 (0, 0), 1, 1, _ScaleAdjustedUV_faa313edae6f4053979855999b09e160, _ScaleAdjustedUV_faa313edae6f4053979855999b09e160_UV_1, _ScaleAdjustedUV_faa313edae6f4053979855999b09e160_Scalel_2);
					float2 _Property_5aeebcd453b9479f8becbd97a02193a4_Out_0 = Vector2_da9e29fcca554d95b2d664ed3663d75c;
					float2 _Branch_ce207f3de4b94012bac057423cb9ac54_Out_3;
					Unity_Branch_float2(_Property_c66cbf467ee248c6a500fd0b0eaceb54_Out_0, _ScaleAdjustedUV_faa313edae6f4053979855999b09e160_UV_1, _Property_5aeebcd453b9479f8becbd97a02193a4_Out_0, _Branch_ce207f3de4b94012bac057423cb9ac54_Out_3);
					float2 _Absolute_7aee196d9e0e48629740a493b1d9ac81_Out_1;
					Unity_Absolute_float2(_Branch_ce207f3de4b94012bac057423cb9ac54_Out_3, _Absolute_7aee196d9e0e48629740a493b1d9ac81_Out_1);
					float2 _Property_6079722db3c3413a8577749f75ea8ad5_Out_0 = Vector2_d6fead635aeb487ab75a4e27239bcfce;
					float2 _Subtract_75113dc9f9524126833a7acf259c88a5_Out_2;
					Unity_Subtract_float2(_Absolute_7aee196d9e0e48629740a493b1d9ac81_Out_1, _Property_6079722db3c3413a8577749f75ea8ad5_Out_0, _Subtract_75113dc9f9524126833a7acf259c88a5_Out_2);
					float _Split_ded9bed1f0be4d99a3dd5abaf2738f4f_R_1 = _Branch_ce207f3de4b94012bac057423cb9ac54_Out_3[0];
					float _Split_ded9bed1f0be4d99a3dd5abaf2738f4f_G_2 = _Branch_ce207f3de4b94012bac057423cb9ac54_Out_3[1];
					float _Split_ded9bed1f0be4d99a3dd5abaf2738f4f_B_3 = 0;
					float _Split_ded9bed1f0be4d99a3dd5abaf2738f4f_A_4 = 0;
					float _Comparison_0d210fb7601345e09953fff34997249b_Out_2;
					Unity_Comparison_Greater_float(_Split_ded9bed1f0be4d99a3dd5abaf2738f4f_G_2, 0, _Comparison_0d210fb7601345e09953fff34997249b_Out_2);
					float _Comparison_9d8ef75570944378944d4083abec5218_Out_2;
					Unity_Comparison_Greater_float(_Split_ded9bed1f0be4d99a3dd5abaf2738f4f_R_1, 0, _Comparison_9d8ef75570944378944d4083abec5218_Out_2);
					float _Property_c977cc59908142ffa18edc26bc02cb97_Out_0 = Vector1_21fcbe9f35924720bf3477401fa27c66;
					float4 _Property_a9433087266e4c2e993dde6fa69c20fb_Out_0 = Vector4_53714d1d0ac1424b915bb501bcefb1b5;
					float4 _Add_d808ef8c26f94ddc8d6c99028b307711_Out_2;
					Unity_Add_float4((_Property_c977cc59908142ffa18edc26bc02cb97_Out_0.xxxx), _Property_a9433087266e4c2e993dde6fa69c20fb_Out_0, _Add_d808ef8c26f94ddc8d6c99028b307711_Out_2);
					float _Split_b020ab121d1444bf8413e8567144d1c2_R_1 = _Add_d808ef8c26f94ddc8d6c99028b307711_Out_2[0];
					float _Split_b020ab121d1444bf8413e8567144d1c2_G_2 = _Add_d808ef8c26f94ddc8d6c99028b307711_Out_2[1];
					float _Split_b020ab121d1444bf8413e8567144d1c2_B_3 = _Add_d808ef8c26f94ddc8d6c99028b307711_Out_2[2];
					float _Split_b020ab121d1444bf8413e8567144d1c2_A_4 = _Add_d808ef8c26f94ddc8d6c99028b307711_Out_2[3];
					float2 _Vector2_ee1c5fef73e84f2eba0aafb46db9b59f_Out_0 = float2(_Split_b020ab121d1444bf8413e8567144d1c2_R_1, _Split_b020ab121d1444bf8413e8567144d1c2_A_4);
					float2 _Vector2_c7bd25f61b1d4508b23287c4597a951a_Out_0 = float2(_Split_b020ab121d1444bf8413e8567144d1c2_G_2, _Split_b020ab121d1444bf8413e8567144d1c2_B_3);
					float2 _Branch_67b0cce927554cda9dc4e2e4e2124f76_Out_3;
					Unity_Branch_float2(_Comparison_9d8ef75570944378944d4083abec5218_Out_2, _Vector2_ee1c5fef73e84f2eba0aafb46db9b59f_Out_0, _Vector2_c7bd25f61b1d4508b23287c4597a951a_Out_0, _Branch_67b0cce927554cda9dc4e2e4e2124f76_Out_3);
					float _Split_f188e22db8a24f7cb361a5f7712568e1_R_1 = _Branch_67b0cce927554cda9dc4e2e4e2124f76_Out_3[0];
					float _Split_f188e22db8a24f7cb361a5f7712568e1_G_2 = _Branch_67b0cce927554cda9dc4e2e4e2124f76_Out_3[1];
					float _Split_f188e22db8a24f7cb361a5f7712568e1_B_3 = 0;
					float _Split_f188e22db8a24f7cb361a5f7712568e1_A_4 = 0;
					float _Branch_35cd47895bfc48adb5ac8d8586dfe76d_Out_3;
					Unity_Branch_float(_Comparison_0d210fb7601345e09953fff34997249b_Out_2, _Split_f188e22db8a24f7cb361a5f7712568e1_R_1, _Split_f188e22db8a24f7cb361a5f7712568e1_G_2, _Branch_35cd47895bfc48adb5ac8d8586dfe76d_Out_3);
					float2 _Add_9a31badc75144df9bf89620e1a768e8f_Out_2;
					Unity_Add_float2(_Subtract_75113dc9f9524126833a7acf259c88a5_Out_2, (_Branch_35cd47895bfc48adb5ac8d8586dfe76d_Out_3.xx), _Add_9a31badc75144df9bf89620e1a768e8f_Out_2);
					float2 _Maximum_900d1a0acc1a4af1a88da7996236e483_Out_2;
					Unity_Maximum_float2(_Add_9a31badc75144df9bf89620e1a768e8f_Out_2, float2(0, 0), _Maximum_900d1a0acc1a4af1a88da7996236e483_Out_2);
					float _Length_30c2872a88e742e8a20e69f85ccc3636_Out_1;
					Unity_Length_float2(_Maximum_900d1a0acc1a4af1a88da7996236e483_Out_2, _Length_30c2872a88e742e8a20e69f85ccc3636_Out_1);
					float _Split_a2422dc736d940f1b425ec90ec13f56d_R_1 = _Add_9a31badc75144df9bf89620e1a768e8f_Out_2[0];
					float _Split_a2422dc736d940f1b425ec90ec13f56d_G_2 = _Add_9a31badc75144df9bf89620e1a768e8f_Out_2[1];
					float _Split_a2422dc736d940f1b425ec90ec13f56d_B_3 = 0;
					float _Split_a2422dc736d940f1b425ec90ec13f56d_A_4 = 0;
					float _Maximum_9949c6f7da6740c784bded8382231a00_Out_2;
					Unity_Maximum_float(_Split_a2422dc736d940f1b425ec90ec13f56d_R_1, _Split_a2422dc736d940f1b425ec90ec13f56d_G_2, _Maximum_9949c6f7da6740c784bded8382231a00_Out_2);
					float _Minimum_e7fbb60057494320b96e1ac3d5e3dabe_Out_2;
					Unity_Minimum_float(_Maximum_9949c6f7da6740c784bded8382231a00_Out_2, 0, _Minimum_e7fbb60057494320b96e1ac3d5e3dabe_Out_2);
					float _Add_596f3db886ca463c8f14b6894681d139_Out_2;
					Unity_Add_float(_Length_30c2872a88e742e8a20e69f85ccc3636_Out_1, _Minimum_e7fbb60057494320b96e1ac3d5e3dabe_Out_2, _Add_596f3db886ca463c8f14b6894681d139_Out_2);
					float _Subtract_4afca2207520493e9d02c0dfea86c069_Out_2;
					Unity_Subtract_float(_Add_596f3db886ca463c8f14b6894681d139_Out_2, _Branch_35cd47895bfc48adb5ac8d8586dfe76d_Out_3, _Subtract_4afca2207520493e9d02c0dfea86c069_Out_2);
					SDF_1 = _Subtract_4afca2207520493e9d02c0dfea86c069_Out_2;
				}


				float2 Unity_GradientNoise_Dir_float(float2 p)
				{
					// Permutation and hashing used in webgl-nosie goo.gl/pX7HtC
					p = p % 289;
					// need full precision, otherwise half overflows when p > 1
					float x = float(34 * p.x + 1) * p.x % 289 + p.y;
					x = (34 * x + 1) * x % 289;
					x = frac(x / 41) * 2 - 1;
					return normalize(float2(x - floor(x + 0.5), abs(x) - 0.5));
				}

				void Unity_GradientNoise_float(float2 UV, float Scale, out float Out)
				{
					float2 p = UV * Scale;
					float2 ip = floor(p);
					float2 fp = frac(p);
					float d00 = dot(Unity_GradientNoise_Dir_float(ip), fp);
					float d01 = dot(Unity_GradientNoise_Dir_float(ip + float2(0, 1)), fp - float2(0, 1));
					float d10 = dot(Unity_GradientNoise_Dir_float(ip + float2(1, 0)), fp - float2(1, 0));
					float d11 = dot(Unity_GradientNoise_Dir_float(ip + float2(1, 1)), fp - float2(1, 1));
					fp = fp * fp * fp * (fp * (fp * 6 - 15) + 10);
					Out = lerp(lerp(d00, d01, fp.y), lerp(d10, d11, fp.y), fp.x) + 0.5;
				}

				struct Bindings_NoiseGen_c55111e92b33ead43bfb3a6e73cf02d5
				{
					half2 uv;
					float3 TimeParameters;
				};

				void SG_NoiseGen_c55111e92b33ead43bfb3a6e73cf02d5(float2 Vector2_cb17fff2b6ef4733ac9bdcdfdc4b546a, float2 Vector2_be9a70ea81534d9cb928332d6d3cdaf3, float Vector1_01afcf72bd934ce2bf73e8f89a71d3ab, float Vector1_0b93f49b361146c7bd5f3bfa95fedbc4, float2 Vector2_d13f4662374a484dbc6e7cf1d5eb8ade, Bindings_NoiseGen_c55111e92b33ead43bfb3a6e73cf02d5 IN, out float OutVector1_1)
				{
					float2 _Property_89515a452b9847128a91b27441a81bfe_Out_0 = Vector2_cb17fff2b6ef4733ac9bdcdfdc4b546a;
					float2 _UV_91c009d569264512868abcd2388bc9c0_Out_0 = IN.uv;
					float2 _Branch_d0705041fe7f4c1383affeb66fdab4a9_Out_3;
					Unity_Branch_float2(1, _Property_89515a452b9847128a91b27441a81bfe_Out_0, (_UV_91c009d569264512868abcd2388bc9c0_Out_0.xy), _Branch_d0705041fe7f4c1383affeb66fdab4a9_Out_3);
					float2 _Property_a7dde0d59f294c8182d3674d6d19ae51_Out_0 = Vector2_be9a70ea81534d9cb928332d6d3cdaf3;
					float2 _Property_7a1c7bca793c4fd281848c5c72e5d813_Out_0 = Vector2_d13f4662374a484dbc6e7cf1d5eb8ade;
					float _Split_b476add823544989bcfecb74e01abb51_R_1 = _Property_7a1c7bca793c4fd281848c5c72e5d813_Out_0[0];
					float _Split_b476add823544989bcfecb74e01abb51_G_2 = _Property_7a1c7bca793c4fd281848c5c72e5d813_Out_0[1];
					float _Split_b476add823544989bcfecb74e01abb51_B_3 = 0;
					float _Split_b476add823544989bcfecb74e01abb51_A_4 = 0;
					float _Multiply_ac320e4dee8c4d20bc9d4dad26313709_Out_2;
					Unity_Multiply_float(IN.TimeParameters.y, _Split_b476add823544989bcfecb74e01abb51_R_1, _Multiply_ac320e4dee8c4d20bc9d4dad26313709_Out_2);
					float _Multiply_4656ce61524c4a82afbc59c807b06626_Out_2;
					Unity_Multiply_float(IN.TimeParameters.y, _Split_b476add823544989bcfecb74e01abb51_G_2, _Multiply_4656ce61524c4a82afbc59c807b06626_Out_2);
					float2 _Vector2_f91559993dbb4c56b597e49529f49c39_Out_0 = float2(_Multiply_ac320e4dee8c4d20bc9d4dad26313709_Out_2, _Multiply_4656ce61524c4a82afbc59c807b06626_Out_2);
					float2 _TilingAndOffset_999b75277a954e5488d78439284ad229_Out_3;
					Unity_TilingAndOffset_float(_Branch_d0705041fe7f4c1383affeb66fdab4a9_Out_3, _Property_a7dde0d59f294c8182d3674d6d19ae51_Out_0, _Vector2_f91559993dbb4c56b597e49529f49c39_Out_0, _TilingAndOffset_999b75277a954e5488d78439284ad229_Out_3);
					float _Property_f54171239e8540c58f4d0c2c6b5bcbcd_Out_0 = Vector1_01afcf72bd934ce2bf73e8f89a71d3ab;
					float _GradientNoise_f8d056717ce94b78b1823e8d32547df9_Out_2;
					Unity_GradientNoise_float(_TilingAndOffset_999b75277a954e5488d78439284ad229_Out_3, _Property_f54171239e8540c58f4d0c2c6b5bcbcd_Out_0, _GradientNoise_f8d056717ce94b78b1823e8d32547df9_Out_2);
					float _Saturate_f91fc83a9aaa4b99adb582f29d8f41dd_Out_1;
					Unity_Saturate_float(_GradientNoise_f8d056717ce94b78b1823e8d32547df9_Out_2, _Saturate_f91fc83a9aaa4b99adb582f29d8f41dd_Out_1);
					float _Property_fef18ef7845a44f98f5ca2490ed8d46e_Out_0 = Vector1_0b93f49b361146c7bd5f3bfa95fedbc4;
					float _Multiply_f4edddc74af1478faa9efc4d66844ec2_Out_2;
					Unity_Multiply_float(_Saturate_f91fc83a9aaa4b99adb582f29d8f41dd_Out_1, _Property_fef18ef7845a44f98f5ca2490ed8d46e_Out_0, _Multiply_f4edddc74af1478faa9efc4d66844ec2_Out_2);
					OutVector1_1 = _Multiply_f4edddc74af1478faa9efc4d66844ec2_Out_2;
				}

				void Unity_DDXY_float(float In, out float Out)
				{
					Out = abs(ddx(In)) + abs(ddy(In));

				}

				struct Bindings_SDFView_49c002e44632b5b48a751fb2cd023151
				{
				};

				void SG_SDFView_49c002e44632b5b48a751fb2cd023151(float Boolean_b7c80e61a22d4e33bb591dfe3644f216, float Vector1_DD090A86, float Vector1_312e0e7f878546669af11a1102b46b95, Bindings_SDFView_49c002e44632b5b48a751fb2cd023151 IN, out float Out_0)
				{
					float _Property_0954e1b24da64b2aa862d41060b4c69f_Out_0 = Boolean_b7c80e61a22d4e33bb591dfe3644f216;
					float _Property_90d043b5b8ac4f3db3fb02233e6b95d6_Out_0 = Vector1_312e0e7f878546669af11a1102b46b95;
					float _Property_fadcb17c26ae48b4bffd073ef6ce88b9_Out_0 = Vector1_DD090A86;
					float _DDXY_49b7b0d4cef0248fb6ef8c1442c46e83_Out_1;
					Unity_DDXY_float(_Property_fadcb17c26ae48b4bffd073ef6ce88b9_Out_0, _DDXY_49b7b0d4cef0248fb6ef8c1442c46e83_Out_1);
					float _Divide_ef1c78e831225586a057ea0933db045d_Out_2;
					Unity_Divide_float(_Property_90d043b5b8ac4f3db3fb02233e6b95d6_Out_0, _DDXY_49b7b0d4cef0248fb6ef8c1442c46e83_Out_1, _Divide_ef1c78e831225586a057ea0933db045d_Out_2);
					float _Saturate_fd31bb6c123d4d2ca2ca39754571653d_Out_1;
					Unity_Saturate_float(_Divide_ef1c78e831225586a057ea0933db045d_Out_2, _Saturate_fd31bb6c123d4d2ca2ca39754571653d_Out_1);
					float _Step_7c5044b6c2e2408791aa2d1c0f6cdd62_Out_2;
					Unity_Step_float(0, _Property_90d043b5b8ac4f3db3fb02233e6b95d6_Out_0, _Step_7c5044b6c2e2408791aa2d1c0f6cdd62_Out_2);
					float _Branch_76b7fb2eac814b0bae4ab7133720c056_Out_3;
					Unity_Branch_float(_Property_0954e1b24da64b2aa862d41060b4c69f_Out_0, _Saturate_fd31bb6c123d4d2ca2ca39754571653d_Out_1, _Step_7c5044b6c2e2408791aa2d1c0f6cdd62_Out_2, _Branch_76b7fb2eac814b0bae4ab7133720c056_Out_3);
					Out_0 = _Branch_76b7fb2eac814b0bae4ab7133720c056_Out_3;
				}

				void Unity_Power_float(float A, float B, out float Out)
				{
					Out = pow(A, B);
				}

				struct Bindings_SDFShadow_a024649aee42a0d4ea2a840d23a784ed
				{
				};

				void SG_SDFShadow_a024649aee42a0d4ea2a840d23a784ed(float Boolean_3c9073aead3a484e86f539019de4560b, float Vector1_5c312ca8bcc845d98e6beebcf6601fe6, float Vector1_deab39d435664e78b945e592b3972d15, float Vector1_a26133ad5c4f439cbea2eb99431ac94d, Bindings_SDFShadow_a024649aee42a0d4ea2a840d23a784ed IN, out float Mask_1)
				{
					float _Property_6cec728771ac452aa76050a0cf4cd857_Out_0 = Boolean_3c9073aead3a484e86f539019de4560b;
					float _Property_c993f967727344339879b2f628b66099_Out_0 = Vector1_5c312ca8bcc845d98e6beebcf6601fe6;
					float _Negate_141b9069e05a4d3c878d69ff459a369b_Out_1;
					Unity_Negate_float(_Property_c993f967727344339879b2f628b66099_Out_0, _Negate_141b9069e05a4d3c878d69ff459a369b_Out_1);
					float _Branch_5a18ef53f234440b97f10bf23539736b_Out_3;
					Unity_Branch_float(_Property_6cec728771ac452aa76050a0cf4cd857_Out_0, _Negate_141b9069e05a4d3c878d69ff459a369b_Out_1, _Property_c993f967727344339879b2f628b66099_Out_0, _Branch_5a18ef53f234440b97f10bf23539736b_Out_3);
					float _Property_2c4e7eb1b03746d0aab6131a0df65a15_Out_0 = Vector1_deab39d435664e78b945e592b3972d15;
					float _Maximum_5608cfbc64f9430ca9cc95295517d6ee_Out_2;
					Unity_Maximum_float(_Property_2c4e7eb1b03746d0aab6131a0df65a15_Out_0, 0, _Maximum_5608cfbc64f9430ca9cc95295517d6ee_Out_2);
					float _Divide_f38ce6019ae8456b9df987a407c29238_Out_2;
					Unity_Divide_float(_Branch_5a18ef53f234440b97f10bf23539736b_Out_3, _Maximum_5608cfbc64f9430ca9cc95295517d6ee_Out_2, _Divide_f38ce6019ae8456b9df987a407c29238_Out_2);
					float _Clamp_6500818507d348fda0867414a63a03f3_Out_3;
					Unity_Clamp_float(_Divide_f38ce6019ae8456b9df987a407c29238_Out_2, 0, 1, _Clamp_6500818507d348fda0867414a63a03f3_Out_3);
					float _Property_aebeeca78aa04780af9f20e53f33531a_Out_0 = Vector1_a26133ad5c4f439cbea2eb99431ac94d;
					float _OneMinus_f23a6946f0284ed386f88e7c7016697a_Out_1;
					Unity_OneMinus_float(_Property_aebeeca78aa04780af9f20e53f33531a_Out_0, _OneMinus_f23a6946f0284ed386f88e7c7016697a_Out_1);
					float _Multiply_e063052887b440e58133b9543945546c_Out_2;
					Unity_Multiply_float(_OneMinus_f23a6946f0284ed386f88e7c7016697a_Out_1, 20, _Multiply_e063052887b440e58133b9543945546c_Out_2);
					float _Power_b667a4f8ed374f9da363e17582ecf987_Out_2;
					Unity_Power_float(_Clamp_6500818507d348fda0867414a63a03f3_Out_3, _Multiply_e063052887b440e58133b9543945546c_Out_2, _Power_b667a4f8ed374f9da363e17582ecf987_Out_2);
					float _OneMinus_ef2ab96144bf43cb9ed5effe92886e45_Out_1;
					Unity_OneMinus_float(_Power_b667a4f8ed374f9da363e17582ecf987_Out_2, _OneMinus_ef2ab96144bf43cb9ed5effe92886e45_Out_1);
					Mask_1 = _OneMinus_ef2ab96144bf43cb9ed5effe92886e45_Out_1;
				}

				void Unity_Absolute_float(float In, out float Out)
				{
					Out = abs(In);
				}

				struct Bindings_SDFOutline_7baf1367a60f0344b91453021cca5db1
				{
				};

				void SG_SDFOutline_7baf1367a60f0344b91453021cca5db1(float Vector1_4e9752194de5439fb3f2cc45a3b9d874, float Vector1_dda43f0e772044a782ca705943d40f57, float Boolean_98caceaf3c5f48279539f8a330a21479, Bindings_SDFOutline_7baf1367a60f0344b91453021cca5db1 IN, out float OutVector1_1)
				{
					float _Property_d1c7df51b4c943329137cf602eec4361_Out_0 = Boolean_98caceaf3c5f48279539f8a330a21479;
					float _Property_54e9ec3fcadf4ae9bee4a716c1ff5243_Out_0 = Vector1_4e9752194de5439fb3f2cc45a3b9d874;
					float _Property_224ef59fdc7f4336a5ec52d950339f4d_Out_0 = Vector1_dda43f0e772044a782ca705943d40f57;
					float _Divide_b4dcf63d8dba4d8d9006201c1e974e3f_Out_2;
					Unity_Divide_float(_Property_224ef59fdc7f4336a5ec52d950339f4d_Out_0, 2, _Divide_b4dcf63d8dba4d8d9006201c1e974e3f_Out_2);
					float _Add_139449f14f4048c7adf70a37fc66a634_Out_2;
					Unity_Add_float(_Property_54e9ec3fcadf4ae9bee4a716c1ff5243_Out_0, _Divide_b4dcf63d8dba4d8d9006201c1e974e3f_Out_2, _Add_139449f14f4048c7adf70a37fc66a634_Out_2);
					float _Absolute_1d49bf2b38d545929130f800a5b1f3fa_Out_1;
					Unity_Absolute_float(_Add_139449f14f4048c7adf70a37fc66a634_Out_2, _Absolute_1d49bf2b38d545929130f800a5b1f3fa_Out_1);
					float _Subtract_1641749e592844218ceef56616a9b055_Out_2;
					Unity_Subtract_float(_Absolute_1d49bf2b38d545929130f800a5b1f3fa_Out_1, _Divide_b4dcf63d8dba4d8d9006201c1e974e3f_Out_2, _Subtract_1641749e592844218ceef56616a9b055_Out_2);
					float _Subtract_1cb4e6135c964b08bd9645da03d30be3_Out_2;
					Unity_Subtract_float(_Property_54e9ec3fcadf4ae9bee4a716c1ff5243_Out_0, _Divide_b4dcf63d8dba4d8d9006201c1e974e3f_Out_2, _Subtract_1cb4e6135c964b08bd9645da03d30be3_Out_2);
					float _Absolute_23fb84d664a345328912295f13bc666f_Out_1;
					Unity_Absolute_float(_Subtract_1cb4e6135c964b08bd9645da03d30be3_Out_2, _Absolute_23fb84d664a345328912295f13bc666f_Out_1);
					float _Subtract_dc2b822f384447c1a0e54f7e31627ad8_Out_2;
					Unity_Subtract_float(_Absolute_23fb84d664a345328912295f13bc666f_Out_1, _Divide_b4dcf63d8dba4d8d9006201c1e974e3f_Out_2, _Subtract_dc2b822f384447c1a0e54f7e31627ad8_Out_2);
					float _Branch_9886cb4d111d43b491fb95b7dca1e67b_Out_3;
					Unity_Branch_float(_Property_d1c7df51b4c943329137cf602eec4361_Out_0, _Subtract_1641749e592844218ceef56616a9b055_Out_2, _Subtract_dc2b822f384447c1a0e54f7e31627ad8_Out_2, _Branch_9886cb4d111d43b491fb95b7dca1e67b_Out_3);
					OutVector1_1 = _Branch_9886cb4d111d43b491fb95b7dca1e67b_Out_3;
				}

				VertexOut vert(VertexIn IN)
				{
					VertexOut description = (VertexOut)0;
					
#if defined(SHAPE_LINEAR)
					float2 uv = IN.uv;

	
					float u = (uv.y - 0.5) * 2.0 * _Slant;
					
					float x = u + IN.vertex[0];
#else
					float x = IN.vertex[0];
#endif
					description.vertex = UnityObjectToClipPos(float4(float3(x, IN.vertex[1], IN.vertex[2]), 0)); //UnityObjectToClipPos(IN.vertex);//
					description.uv = TRANSFORM_TEX(IN.uv, _MainTex);
					return description;
				}

				fixed4 frag(VertexOut IN) : SV_TARGET
				{
					//float _AntiAlias = 1;
					float4 surface = (float4)0;

					float4 _Property_4014adfb24ee4ad6933c9495d00f0d90_Out_0 = _OverlayColor;


					sampler2D _Property_9f052fd306e746688129c29f5d61e1f9_Out_0 = _OverlayTexture;


					float2 _Property_ee32e4cbc9794730a2c718c933abdd26_Out_0 = _OverlayTextureTiling;


					float2 _Property_4ac6293ce498498abfbd744028748e94_Out_0 = _OverlayTextureOffset;


					float2 _TilingAndOffset_073c65dd167e4d7cb7791cbee8bb76bd_Out_3;
					Unity_TilingAndOffset_float(IN.uv, _Property_ee32e4cbc9794730a2c718c933abdd26_Out_0, _Property_4ac6293ce498498abfbd744028748e94_Out_0, _TilingAndOffset_073c65dd167e4d7cb7791cbee8bb76bd_Out_3);


					float _Property_237f5f7d91a74ef891457556be562b23_Out_0 = _FlipbookFPS;


					float2 _Property_4c90af3c81654aad81df0ce639d2d6b7_Out_0 = _OverlayFlipbookDim;


					float2 _Maximum_1fbe7fc8926147b3acdc2a5e96cbd8a5_Out_2;
					Unity_Maximum_float2(_Property_4c90af3c81654aad81df0ce639d2d6b7_Out_0, float2(1, 1), _Maximum_1fbe7fc8926147b3acdc2a5e96cbd8a5_Out_2);


					float _Split_5e510aec2a7f4dcba98be0ae6b4a03d3_R_1 = _Maximum_1fbe7fc8926147b3acdc2a5e96cbd8a5_Out_2[0];
					float _Split_5e510aec2a7f4dcba98be0ae6b4a03d3_G_2 = _Maximum_1fbe7fc8926147b3acdc2a5e96cbd8a5_Out_2[1];
					float _Split_5e510aec2a7f4dcba98be0ae6b4a03d3_B_3 = 0;
					float _Split_5e510aec2a7f4dcba98be0ae6b4a03d3_A_4 = 0;


					Bindings_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d _FlipbookTexture_edb2690f3ca14d9cbe66fee5a606570e;
					_FlipbookTexture_edb2690f3ca14d9cbe66fee5a606570e.TimeParameters = _Time;
					float4 _FlipbookTexture_edb2690f3ca14d9cbe66fee5a606570e_RGBA_0;
					SG_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d(_Property_9f052fd306e746688129c29f5d61e1f9_Out_0, _TilingAndOffset_073c65dd167e4d7cb7791cbee8bb76bd_Out_3, _Property_237f5f7d91a74ef891457556be562b23_Out_0, _Split_5e510aec2a7f4dcba98be0ae6b4a03d3_R_1, _Split_5e510aec2a7f4dcba98be0ae6b4a03d3_G_2, _FlipbookTexture_edb2690f3ca14d9cbe66fee5a606570e, _FlipbookTexture_edb2690f3ca14d9cbe66fee5a606570e_RGBA_0);


					float4 _Multiply_07efee885aaf48fdbc7987482b2e77a9_Out_2;
					Unity_Multiply_float(_Property_4014adfb24ee4ad6933c9495d00f0d90_Out_0, _FlipbookTexture_edb2690f3ca14d9cbe66fee5a606570e_RGBA_0, _Multiply_07efee885aaf48fdbc7987482b2e77a9_Out_2);


					float _Property_f133ff7e8ca94e5581bf1a0760422f48_Out_0 = _OverlayTextureOpacity;


					float _Saturate_52f73c05d2de419b88785b3e6f66e294_Out_1;
					Unity_Saturate_float(_Property_f133ff7e8ca94e5581bf1a0760422f48_Out_0, _Saturate_52f73c05d2de419b88785b3e6f66e294_Out_1);


					float4 _Lerp_6993ee2133d04a2f9434aefe978fbcaa_Out_3;
					Unity_Lerp_float4(_Property_4014adfb24ee4ad6933c9495d00f0d90_Out_0, _Multiply_07efee885aaf48fdbc7987482b2e77a9_Out_2, (_Saturate_52f73c05d2de419b88785b3e6f66e294_Out_1.xxxx), _Lerp_6993ee2133d04a2f9434aefe978fbcaa_Out_3);


					#if defined(OVERLAY_TEXTURE_ON)
					float4 _OverlayTextureOn_585958adf2344422a9604a8535fc4a2c_Out_0 = _Lerp_6993ee2133d04a2f9434aefe978fbcaa_Out_3;
					#else
					float4 _OverlayTextureOn_585958adf2344422a9604a8535fc4a2c_Out_0 = _Property_4014adfb24ee4ad6933c9495d00f0d90_Out_0;
#endif


					float _Property_2e332933560f409798fcfb0f4335f389_Out_0 = _BorderWidth;


					float _Ceiling_ea7d0234236b4bd5acd4fcde88dfcc99_Out_1;
					Unity_Ceiling_float(_Property_2e332933560f409798fcfb0f4335f389_Out_0, _Ceiling_ea7d0234236b4bd5acd4fcde88dfcc99_Out_1);


					float _Saturate_b267d3ab8b1f4e25a24e984f30cf088d_Out_1;
					Unity_Saturate_float(_Ceiling_ea7d0234236b4bd5acd4fcde88dfcc99_Out_1, _Saturate_b267d3ab8b1f4e25a24e984f30cf088d_Out_1);


					float4 _Property_407bb1af469344bcbdbd4c55c818e2fc_Out_0 = _BorderColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_9681fc522cac44f590af4358ba777e45;
					float4 _ColorMul_9681fc522cac44f590af4358ba777e45_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(_Saturate_b267d3ab8b1f4e25a24e984f30cf088d_Out_1, _Property_407bb1af469344bcbdbd4c55c818e2fc_Out_0, _ColorMul_9681fc522cac44f590af4358ba777e45, _ColorMul_9681fc522cac44f590af4358ba777e45_OutVector4_1);


					sampler2D _Property_ba3d0b73266a42a08f237b665a129233_Out_0 = _BorderTexture;


					float _Property_f4e6934cf4e44714802c28ff6cad1c4b_Out_0 = _SegmentCount;


					float _Branch_78a5236f85ba4387bb75f6141203438b_Out_3;
					Unity_Branch_float(0, _Property_f4e6934cf4e44714802c28ff6cad1c4b_Out_0, 0, _Branch_78a5236f85ba4387bb75f6141203438b_Out_3);


					float2 _Vector2_051d55412b614724b14572998e99aeb8_Out_0 = float2(_Branch_78a5236f85ba4387bb75f6141203438b_Out_3, 0);


					float2 _Property_ee1be78a640f404c9a8cd0f8ef3c7ace_Out_0 = _BorderTextureTiling;


					float2 _Add_1085b1920ce14b6495993933490deb20_Out_2;
					Unity_Add_float2(_Vector2_051d55412b614724b14572998e99aeb8_Out_0, _Property_ee1be78a640f404c9a8cd0f8ef3c7ace_Out_0, _Add_1085b1920ce14b6495993933490deb20_Out_2);


					float _Split_38fb7c9b26ba4b658770fa2fb5a511ca_R_1 = _Add_1085b1920ce14b6495993933490deb20_Out_2[0];
					float _Split_38fb7c9b26ba4b658770fa2fb5a511ca_G_2 = _Add_1085b1920ce14b6495993933490deb20_Out_2[1];
					float _Split_38fb7c9b26ba4b658770fa2fb5a511ca_B_3 = 0;
					float _Split_38fb7c9b26ba4b658770fa2fb5a511ca_A_4 = 0;


					sampler2D _Property_d3304f6cc198469185fbb342316a3a7a_Out_0 = _VariableWidthCurve;


					float4 _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_RGBA_0 = tex2D(_Property_d3304f6cc198469185fbb342316a3a7a_Out_0, IN.uv);
					float _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_R_4 = _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_RGBA_0.r;
					float _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_G_5 = _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_RGBA_0.g;
					float _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_B_6 = _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_RGBA_0.b;
					float _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_A_7 = _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_RGBA_0.a;


					float _Divide_0a21022a2c184d1cb7f2f09465e70e46_Out_2;
					Unity_Divide_float(_Split_38fb7c9b26ba4b658770fa2fb5a511ca_G_2, _SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_R_4, _Divide_0a21022a2c184d1cb7f2f09465e70e46_Out_2);


					float2 _Vector2_e2169e19612d49c8a2fc552464be4026_Out_0 = float2(_Split_38fb7c9b26ba4b658770fa2fb5a511ca_R_1, _Divide_0a21022a2c184d1cb7f2f09465e70e46_Out_2);


					float2 _Property_9e0cfda1ca004792a8d88cb4a4c24924_Out_0 = _BorderTextureOffset;


					float _Divide_159923bfbfac4e3a8180535042302f8f_Out_2;
					Unity_Divide_float(_Divide_0a21022a2c184d1cb7f2f09465e70e46_Out_2, 2, _Divide_159923bfbfac4e3a8180535042302f8f_Out_2);


					float _Negate_d253cc3a2b58431592c73f9af36b2e29_Out_1;
					Unity_Negate_float(_Divide_159923bfbfac4e3a8180535042302f8f_Out_2, _Negate_d253cc3a2b58431592c73f9af36b2e29_Out_1);


					float _Add_1745611e09ff43338b7c9ec6b9eafe69_Out_2;
					Unity_Add_float(_Negate_d253cc3a2b58431592c73f9af36b2e29_Out_1, 0.5, _Add_1745611e09ff43338b7c9ec6b9eafe69_Out_2);


					float2 _Vector2_4b18af9b38c442919fbc1219097f0285_Out_0 = float2(0, _Add_1745611e09ff43338b7c9ec6b9eafe69_Out_2);


					float2 _Add_345aca67a21e438598fe64b156a7e8f1_Out_2;
					Unity_Add_float2(_Property_9e0cfda1ca004792a8d88cb4a4c24924_Out_0, _Vector2_4b18af9b38c442919fbc1219097f0285_Out_0, _Add_345aca67a21e438598fe64b156a7e8f1_Out_2);


					float2 _TilingAndOffset_9b29910d1afd4d6ebf139e9b61600133_Out_3;
					Unity_TilingAndOffset_float(IN.uv, _Vector2_e2169e19612d49c8a2fc552464be4026_Out_0, _Add_345aca67a21e438598fe64b156a7e8f1_Out_2, _TilingAndOffset_9b29910d1afd4d6ebf139e9b61600133_Out_3);


					float _Property_8f8a780dc96e47869c86fa263a09a2b5_Out_0 = _FlipbookFPS;


					float2 _Property_ba81046d9c3c419e8d1f4476b3f8f612_Out_0 = _BorderFlipbookDim;


					float2 _Maximum_da438a1dbb474f759cc4f4a8c097d70d_Out_2;
					Unity_Maximum_float2(_Property_ba81046d9c3c419e8d1f4476b3f8f612_Out_0, float2(1, 1), _Maximum_da438a1dbb474f759cc4f4a8c097d70d_Out_2);


					float _Split_ded95dc0513749959e59472e4d90b960_R_1 = _Maximum_da438a1dbb474f759cc4f4a8c097d70d_Out_2[0];
					float _Split_ded95dc0513749959e59472e4d90b960_G_2 = _Maximum_da438a1dbb474f759cc4f4a8c097d70d_Out_2[1];
					float _Split_ded95dc0513749959e59472e4d90b960_B_3 = 0;
					float _Split_ded95dc0513749959e59472e4d90b960_A_4 = 0;


					Bindings_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d _FlipbookTexture_057df6a936c240d8883c5cda10efeb65;
					_FlipbookTexture_057df6a936c240d8883c5cda10efeb65.TimeParameters = _Time;
					float4 _FlipbookTexture_057df6a936c240d8883c5cda10efeb65_RGBA_0;
					SG_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d(_Property_ba3d0b73266a42a08f237b665a129233_Out_0, _TilingAndOffset_9b29910d1afd4d6ebf139e9b61600133_Out_3, _Property_8f8a780dc96e47869c86fa263a09a2b5_Out_0, _Split_ded95dc0513749959e59472e4d90b960_R_1, _Split_ded95dc0513749959e59472e4d90b960_G_2, _FlipbookTexture_057df6a936c240d8883c5cda10efeb65, _FlipbookTexture_057df6a936c240d8883c5cda10efeb65_RGBA_0);


					float4 _Multiply_e0c89cfe78c64149b1941dce1b2cc670_Out_2;
					Unity_Multiply_float(_ColorMul_9681fc522cac44f590af4358ba777e45_OutVector4_1, _FlipbookTexture_057df6a936c240d8883c5cda10efeb65_RGBA_0, _Multiply_e0c89cfe78c64149b1941dce1b2cc670_Out_2);


					float _Property_0c8bc959df1c4abfaf2d5796a75619a4_Out_0 = _BorderTextureOpacity;


					float _Saturate_94ae251119744b8ab52d8d5f2d959a3a_Out_1;
					Unity_Saturate_float(_Property_0c8bc959df1c4abfaf2d5796a75619a4_Out_0, _Saturate_94ae251119744b8ab52d8d5f2d959a3a_Out_1);


					float4 _Lerp_5ea0128458c04b77abf5966f396d5f66_Out_3;
					Unity_Lerp_float4(_ColorMul_9681fc522cac44f590af4358ba777e45_OutVector4_1, _Multiply_e0c89cfe78c64149b1941dce1b2cc670_Out_2, (_Saturate_94ae251119744b8ab52d8d5f2d959a3a_Out_1.xxxx), _Lerp_5ea0128458c04b77abf5966f396d5f66_Out_3);


					#if defined(BORDER_TEXTURE_ON)
					float4 _BorderTextureOn_7cdb48d6ec784e90b13dea6fba734477_Out_0 = _Lerp_5ea0128458c04b77abf5966f396d5f66_Out_3;
					#else
					float4 _BorderTextureOn_7cdb48d6ec784e90b13dea6fba734477_Out_0 = _ColorMul_9681fc522cac44f590af4358ba777e45_OutVector4_1;
#endif


					float _Property_e4fe57aca1e44964ad2f67c052e66f12_Out_0 = _BackgroundGradientEnabled;


					sampler2D _Property_ab7ad8cc639246169398a4d9928ab8c0_Out_0 = _BackgroundGradient;


					float _Property_b6a5a79cfdac4facbdc0d7cf6c113a78_Out_0 = _ValueAsGradientTimeBackground;


					float _Property_ea6c32a446d8455a8200f97050673e8b_Out_0 = _Value;


					float _Property_e74b17fbc762412bb78f898a30a45729_Out_0 = _SegmentCount;


					float _Divide_f1e16dc1d34d44a2931c7232d40fcb70_Out_2;
					Unity_Divide_float(_Property_ea6c32a446d8455a8200f97050673e8b_Out_0, _Property_e74b17fbc762412bb78f898a30a45729_Out_0, _Divide_f1e16dc1d34d44a2931c7232d40fcb70_Out_2);


					float _Saturate_479c102004c94df493b1b330a6357e5d_Out_1;
					Unity_Saturate_float(_Divide_f1e16dc1d34d44a2931c7232d40fcb70_Out_2, _Saturate_479c102004c94df493b1b330a6357e5d_Out_1);


					float _Property_2121f2fad1234ba38130fcd8b7ca0c6f_Out_0 = _SegmentCount;


					#if defined(SHAPE_LINEAR)
					float _Shape_99a54b3ec90b4eda8f94bdd5db5fad57_Out_0 = 0;
					#else
					float _Shape_99a54b3ec90b4eda8f94bdd5db5fad57_Out_0 = 1;
#endif


					float _Comparison_0ef69445505d42039ef74a3383b24aae_Out_2;
					Unity_Comparison_Equal_float(_Shape_99a54b3ec90b4eda8f94bdd5db5fad57_Out_0, 1, _Comparison_0ef69445505d42039ef74a3383b24aae_Out_2);
					float use_custom_scale = _Comparison_0ef69445505d42039ef74a3383b24aae_Out_2 || _UIScaling;


					float _Property_5a69deabf2344c36a8d0c74c47b4953d_Out_0 = _Radius;


					float _Property_5c36ecb43b764708a633962210e72b23_Out_0 = _Width;


					float _Property_bb46598867d24261a4f74614ad3f7b25_Out_0 = _Arc;


					float _Property_7eac333efe1f4fffb5ba604e18b1b248_Out_0 = _CircleLength;


					Bindings_CircleSize_c061357d2877b5046b04d83f9968414a _CircleSize_7c2c40419df0437587dbf25eaff0786d;
					_CircleSize_7c2c40419df0437587dbf25eaff0786d.uv = IN.uv;
					float _CircleSize_7c2c40419df0437587dbf25eaff0786d_Length_1;
					SG_CircleSize_c061357d2877b5046b04d83f9968414a(_Property_5a69deabf2344c36a8d0c74c47b4953d_Out_0, _Property_5c36ecb43b764708a633962210e72b23_Out_0, _Property_bb46598867d24261a4f74614ad3f7b25_Out_0, _Property_7eac333efe1f4fffb5ba604e18b1b248_Out_0, _CircleSize_7c2c40419df0437587dbf25eaff0786d, _CircleSize_7c2c40419df0437587dbf25eaff0786d_Length_1);


					float3 _Vector3_64f6c805a7e64cba924ee5363ca57207_Out_0 = float3(_CircleSize_7c2c40419df0437587dbf25eaff0786d_Length_1, _Property_5c36ecb43b764708a633962210e72b23_Out_0, 0);


					Bindings_ObjectScale_45d3a2024b3aace4f89e012df31ccd48 _ObjectScale_43e904cf1540426fbf40ba647070aad9;
					float3 _ObjectScale_43e904cf1540426fbf40ba647070aad9_Scale_2;
					float2 _ObjectScale_43e904cf1540426fbf40ba647070aad9_Scale2D_4;
					float _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5;
					float _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6;
					float _ObjectScale_43e904cf1540426fbf40ba647070aad9_Z_7;

					float2 circle_or_ui_scaling;
					Unity_Branch_float2(_Comparison_0ef69445505d42039ef74a3383b24aae_Out_2, _Vector3_64f6c805a7e64cba924ee5363ca57207_Out_0.xy, _CustomScale.xy, circle_or_ui_scaling);

					SG_ObjectScale_45d3a2024b3aace4f89e012df31ccd48(use_custom_scale, circle_or_ui_scaling.xyy, _ObjectScale_43e904cf1540426fbf40ba647070aad9, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Scale_2, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Scale2D_4, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Z_7);


					float _Multiply_902b5d37b60c435abe0749e3b177936b_Out_2;
					Unity_Multiply_float(_Property_2121f2fad1234ba38130fcd8b7ca0c6f_Out_0, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Multiply_902b5d37b60c435abe0749e3b177936b_Out_2);


					float _Property_fbffd57a61434e4486af2c889e90149c_Out_0 = _SegmentCount;


					float _Multiply_49df89a4e07444d8957f74bb41ed46c8_Out_2;
					Unity_Multiply_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_fbffd57a61434e4486af2c889e90149c_Out_0, _Multiply_49df89a4e07444d8957f74bb41ed46c8_Out_2);


					float _Property_2c55fccc1d59470380541bcbd10fdb68_Out_0 = _BorderWidth;


					float _Multiply_0aef41769a054291b5d7431c3fb38aad_Out_2;
					Unity_Multiply_float(_Property_2c55fccc1d59470380541bcbd10fdb68_Out_0, _Property_fbffd57a61434e4486af2c889e90149c_Out_0, _Multiply_0aef41769a054291b5d7431c3fb38aad_Out_2);


					float _Multiply_f5b0cf76f93c40df964c967052a5c7c8_Out_2;
					Unity_Multiply_float(_Multiply_0aef41769a054291b5d7431c3fb38aad_Out_2, -2, _Multiply_f5b0cf76f93c40df964c967052a5c7c8_Out_2);


					float _Add_a64b082db145402594a47e2fef25db18_Out_2;
					Unity_Add_float(_Multiply_49df89a4e07444d8957f74bb41ed46c8_Out_2, _Multiply_f5b0cf76f93c40df964c967052a5c7c8_Out_2, _Add_a64b082db145402594a47e2fef25db18_Out_2);


					float _Property_91390949e0bd41e0bdc9ca7d0fcc77eb_Out_0 = _SegmentSpacing;


					float _Multiply_2b5248f103af43bbbca2632382427611_Out_2;
					Unity_Multiply_float(_Property_91390949e0bd41e0bdc9ca7d0fcc77eb_Out_0, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Multiply_2b5248f103af43bbbca2632382427611_Out_2);


					float _Subtract_d98305a18de44349940d48bdcd037945_Out_2;
					Unity_Subtract_float(_Add_a64b082db145402594a47e2fef25db18_Out_2, _Multiply_2b5248f103af43bbbca2632382427611_Out_2, _Subtract_d98305a18de44349940d48bdcd037945_Out_2);


					float _Divide_89a5f10fd4294e9f917adbfaa9b9668d_Out_2;
					Unity_Divide_float(_Multiply_902b5d37b60c435abe0749e3b177936b_Out_2, _Subtract_d98305a18de44349940d48bdcd037945_Out_2, _Divide_89a5f10fd4294e9f917adbfaa9b9668d_Out_2);


					float2 _Vector2_fe67cc44baee447baf5f8e46c6ff455f_Out_0 = float2(_Divide_89a5f10fd4294e9f917adbfaa9b9668d_Out_2, 1);


					float _Subtract_69d6d11f11b047a2b361893d7df3c129_Out_2;
					Unity_Subtract_float(_Divide_89a5f10fd4294e9f917adbfaa9b9668d_Out_2, 1, _Subtract_69d6d11f11b047a2b361893d7df3c129_Out_2);


					float _Divide_f87e44342a7544cb96e6be3da6f44d5c_Out_2;
					Unity_Divide_float(_Subtract_69d6d11f11b047a2b361893d7df3c129_Out_2, 2, _Divide_f87e44342a7544cb96e6be3da6f44d5c_Out_2);


					float _Negate_39bf548e5d2843628726ff2aeb98fa52_Out_1;
					Unity_Negate_float(_Divide_f87e44342a7544cb96e6be3da6f44d5c_Out_2, _Negate_39bf548e5d2843628726ff2aeb98fa52_Out_1);


					float2 _Vector2_f8198346aa93465ab1625369c12a2e86_Out_0 = float2(_Negate_39bf548e5d2843628726ff2aeb98fa52_Out_1, 0);


					float2 _TilingAndOffset_8affd8d212ae4abe942a7dac140ee7bc_Out_3;
					Unity_TilingAndOffset_float(IN.uv, _Vector2_fe67cc44baee447baf5f8e46c6ff455f_Out_0, _Vector2_f8198346aa93465ab1625369c12a2e86_Out_0, _TilingAndOffset_8affd8d212ae4abe942a7dac140ee7bc_Out_3);


					float _Property_a3458b2cb0bf4728b81f8fba71a39609_Out_0 = _BackgroundGradientRotation;


					float2 _Rotate_f3fa043ef40541de881e8cea6805b1b9_Out_3;
					Unity_Rotate_Degrees_float(_TilingAndOffset_8affd8d212ae4abe942a7dac140ee7bc_Out_3, float2 (0.5, 0.5), _Property_a3458b2cb0bf4728b81f8fba71a39609_Out_0, _Rotate_f3fa043ef40541de881e8cea6805b1b9_Out_3);


					float2 _Branch_a35a55005bcb449588695f6e26856892_Out_3;
					Unity_Branch_float2(_Property_b6a5a79cfdac4facbdc0d7cf6c113a78_Out_0, (_Saturate_479c102004c94df493b1b330a6357e5d_Out_1.xx), _Rotate_f3fa043ef40541de881e8cea6805b1b9_Out_3, _Branch_a35a55005bcb449588695f6e26856892_Out_3);


					float4 _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_RGBA_0 = tex2D(_Property_ab7ad8cc639246169398a4d9928ab8c0_Out_0, _Branch_a35a55005bcb449588695f6e26856892_Out_3);
					float _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_R_4 = _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_RGBA_0.r;
					float _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_G_5 = _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_RGBA_0.g;
					float _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_B_6 = _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_RGBA_0.b;
					float _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_A_7 = _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_RGBA_0.a;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_a07c8f57c129484d98eb9d6ff1840f79;
					float4 _ColorMul_a07c8f57c129484d98eb9d6ff1840f79_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(1, _SampleTexture2D_be9ee8e893004dfc83d280659336bec8_RGBA_0, _ColorMul_a07c8f57c129484d98eb9d6ff1840f79, _ColorMul_a07c8f57c129484d98eb9d6ff1840f79_OutVector4_1);


					float4 _Property_f98d5b976d8147459b44e60f88466b7b_Out_0 = _BackgroundColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_8b5a02f799a847ca90cceae9bac5a806;
					float4 _ColorMul_8b5a02f799a847ca90cceae9bac5a806_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(1, _Property_f98d5b976d8147459b44e60f88466b7b_Out_0, _ColorMul_8b5a02f799a847ca90cceae9bac5a806, _ColorMul_8b5a02f799a847ca90cceae9bac5a806_OutVector4_1);


					float4 _Multiply_2bb529ef02514d8aa71e8fc900b95daf_Out_2;
					Unity_Multiply_float(_ColorMul_a07c8f57c129484d98eb9d6ff1840f79_OutVector4_1, _ColorMul_8b5a02f799a847ca90cceae9bac5a806_OutVector4_1, _Multiply_2bb529ef02514d8aa71e8fc900b95daf_Out_2);


					float4 _Branch_38a8d8d1db1a4c44908a0394b59799ed_Out_3;
					Unity_Branch_float4(_Property_e4fe57aca1e44964ad2f67c052e66f12_Out_0, _Multiply_2bb529ef02514d8aa71e8fc900b95daf_Out_2, _ColorMul_8b5a02f799a847ca90cceae9bac5a806_OutVector4_1, _Branch_38a8d8d1db1a4c44908a0394b59799ed_Out_3);


					sampler2D _Property_cc77d5ad300b4d5786c3d37170f2814f_Out_0 = _BackgroundTexture;


					float _Property_99137eac6ab84cc7931b928805afe284_Out_0 = _BackgroundTextureScaleWithSegments;


					float _Property_76e672502ae24aad8c60a14ee52ed5fb_Out_0 = _SegmentCount;


					float2 _Vector2_cc4e07c4054c4c8fb315b56a15c3062b_Out_0 = float2(_Property_76e672502ae24aad8c60a14ee52ed5fb_Out_0, 1);


					float2 _TilingAndOffset_51f7f0a334d44dc5bacbeb02c690c5fc_Out_3;
					Unity_TilingAndOffset_float(IN.uv, _Vector2_cc4e07c4054c4c8fb315b56a15c3062b_Out_0, float2 (0, 0), _TilingAndOffset_51f7f0a334d44dc5bacbeb02c690c5fc_Out_3);


					float _Split_9c6da27ae242497b81bb0d7e9ca1610d_R_1 = _TilingAndOffset_51f7f0a334d44dc5bacbeb02c690c5fc_Out_3[0];
					float _Split_9c6da27ae242497b81bb0d7e9ca1610d_G_2 = _TilingAndOffset_51f7f0a334d44dc5bacbeb02c690c5fc_Out_3[1];
					float _Split_9c6da27ae242497b81bb0d7e9ca1610d_B_3 = 0;
					float _Split_9c6da27ae242497b81bb0d7e9ca1610d_A_4 = 0;


					float _Modulo_eb368c0f39a84554a22dd7f4add7fa49_Out_2;
					Unity_Modulo_float(_Split_9c6da27ae242497b81bb0d7e9ca1610d_R_1, 1, _Modulo_eb368c0f39a84554a22dd7f4add7fa49_Out_2);


					float2 _Vector2_0bd2362a709d4b0e96762df0a1dcb1bc_Out_0 = float2(_Modulo_eb368c0f39a84554a22dd7f4add7fa49_Out_2, _Split_9c6da27ae242497b81bb0d7e9ca1610d_G_2);


					float2 _UV_94e984e163064083a6826aab87e6414a_Out_0 = IN.uv;


					float2 _Branch_f24779c072b94b3ab519d466a980d882_Out_3;
					Unity_Branch_float2(_Property_99137eac6ab84cc7931b928805afe284_Out_0, _Vector2_0bd2362a709d4b0e96762df0a1dcb1bc_Out_0, (_UV_94e984e163064083a6826aab87e6414a_Out_0.xy), _Branch_f24779c072b94b3ab519d466a980d882_Out_3);


					float2 _Property_56e76cbfe37e416881edf8cbef9bd170_Out_0 = _BackgroundTextureTiling;


					float _Split_3d869cf0a57a483ea21844aaf8a549a2_R_1 = _Property_56e76cbfe37e416881edf8cbef9bd170_Out_0[0];
					float _Split_3d869cf0a57a483ea21844aaf8a549a2_G_2 = _Property_56e76cbfe37e416881edf8cbef9bd170_Out_0[1];
					float _Split_3d869cf0a57a483ea21844aaf8a549a2_B_3 = 0;
					float _Split_3d869cf0a57a483ea21844aaf8a549a2_A_4 = 0;


					float _Multiply_e6badd30d9ee471188569e44e9f766c0_Out_2;
					Unity_Multiply_float(_Split_3d869cf0a57a483ea21844aaf8a549a2_R_1, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Multiply_e6badd30d9ee471188569e44e9f766c0_Out_2);


					float _Property_a632b79d57fb4f1088e39f257641e40b_Out_0 = _BackgroundTextureScaleWithSegments;


					float _Property_0e6d4b9d0a9743fd83ec2add215dfe75_Out_0 = _SegmentCount;


					float _Branch_d2632854422d4558bc0afa84ed2c8286_Out_3;
					Unity_Branch_float(_Property_a632b79d57fb4f1088e39f257641e40b_Out_0, 1, _Property_0e6d4b9d0a9743fd83ec2add215dfe75_Out_0, _Branch_d2632854422d4558bc0afa84ed2c8286_Out_3);


					float _Multiply_b2682f65ce0942cb93d22319143840cb_Out_2;
					Unity_Multiply_float(_Multiply_e6badd30d9ee471188569e44e9f766c0_Out_2, _Branch_d2632854422d4558bc0afa84ed2c8286_Out_3, _Multiply_b2682f65ce0942cb93d22319143840cb_Out_2);


					float _Multiply_e097ee0f806645a599b12fd06a7a3895_Out_2;
					Unity_Multiply_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Branch_d2632854422d4558bc0afa84ed2c8286_Out_3, _Multiply_e097ee0f806645a599b12fd06a7a3895_Out_2);


					float _Add_4dd731221f61434c87c62109bd6d3fc6_Out_2;
					Unity_Add_float(_Multiply_e097ee0f806645a599b12fd06a7a3895_Out_2, _Multiply_f5b0cf76f93c40df964c967052a5c7c8_Out_2, _Add_4dd731221f61434c87c62109bd6d3fc6_Out_2);


					float _Subtract_11182ff0488342a28495a2ccb38e9763_Out_2;
					Unity_Subtract_float(_Add_4dd731221f61434c87c62109bd6d3fc6_Out_2, _Multiply_2b5248f103af43bbbca2632382427611_Out_2, _Subtract_11182ff0488342a28495a2ccb38e9763_Out_2);


					float _Divide_762a781f4c8b4112965f8d738f7969b7_Out_2;
					Unity_Divide_float(_Multiply_b2682f65ce0942cb93d22319143840cb_Out_2, _Subtract_11182ff0488342a28495a2ccb38e9763_Out_2, _Divide_762a781f4c8b4112965f8d738f7969b7_Out_2);


					float2 _Property_e836b0fc32594ccb9471bc73b118265a_Out_0 = _BackgroundTextureTiling;


					float _Split_5f6a6c43a42c4518b3aca5538e6a4dd4_R_1 = _Property_e836b0fc32594ccb9471bc73b118265a_Out_0[0];
					float _Split_5f6a6c43a42c4518b3aca5538e6a4dd4_G_2 = _Property_e836b0fc32594ccb9471bc73b118265a_Out_0[1];
					float _Split_5f6a6c43a42c4518b3aca5538e6a4dd4_B_3 = 0;
					float _Split_5f6a6c43a42c4518b3aca5538e6a4dd4_A_4 = 0;


					float _Property_d5dfbcba3def46f6a606a38e63d43a32_Out_0 = _BorderWidth;


					float _Divide_2fe8e68b4c3d4a1eafaef91e1bae41aa_Out_2;
					Unity_Divide_float(2, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, _Divide_2fe8e68b4c3d4a1eafaef91e1bae41aa_Out_2);


					float _Multiply_b505e0246d53469a9468581879ac4769_Out_2;
					Unity_Multiply_float(_Property_d5dfbcba3def46f6a606a38e63d43a32_Out_0, _Divide_2fe8e68b4c3d4a1eafaef91e1bae41aa_Out_2, _Multiply_b505e0246d53469a9468581879ac4769_Out_2);


					float _Subtract_70a19589ba184870abf183db8f9e2062_Out_2;
					Unity_Subtract_float(_SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_R_4, _Multiply_b505e0246d53469a9468581879ac4769_Out_2, _Subtract_70a19589ba184870abf183db8f9e2062_Out_2);


					float _Divide_85ce70118f0244ffa701d6f40cb44081_Out_2;
					Unity_Divide_float(_Split_5f6a6c43a42c4518b3aca5538e6a4dd4_G_2, _Subtract_70a19589ba184870abf183db8f9e2062_Out_2, _Divide_85ce70118f0244ffa701d6f40cb44081_Out_2);


					float2 _Vector2_b699a25c7eeb4249977af9b2cd7c371e_Out_0 = float2(_Divide_762a781f4c8b4112965f8d738f7969b7_Out_2, _Divide_85ce70118f0244ffa701d6f40cb44081_Out_2);


					float2 _Property_150e6c942c4d423db1cdc1e78041a34e_Out_0 = _BackgroundTextureTiling;


					float _Split_cdfec2077c6746a6a83c96a0d5819cee_R_1 = _Property_150e6c942c4d423db1cdc1e78041a34e_Out_0[0];
					float _Split_cdfec2077c6746a6a83c96a0d5819cee_G_2 = _Property_150e6c942c4d423db1cdc1e78041a34e_Out_0[1];
					float _Split_cdfec2077c6746a6a83c96a0d5819cee_B_3 = 0;
					float _Split_cdfec2077c6746a6a83c96a0d5819cee_A_4 = 0;


					float _Subtract_69475cf304b84cbd9dbdd2338379c27f_Out_2;
					Unity_Subtract_float(_Divide_762a781f4c8b4112965f8d738f7969b7_Out_2, _Split_cdfec2077c6746a6a83c96a0d5819cee_R_1, _Subtract_69475cf304b84cbd9dbdd2338379c27f_Out_2);


					float _Divide_3957984360334df2abe951ec76f4c1cc_Out_2;
					Unity_Divide_float(_Subtract_69475cf304b84cbd9dbdd2338379c27f_Out_2, 2, _Divide_3957984360334df2abe951ec76f4c1cc_Out_2);


					float _Negate_3a9df69920244275a1ab31dce2bd3516_Out_1;
					Unity_Negate_float(_Divide_3957984360334df2abe951ec76f4c1cc_Out_2, _Negate_3a9df69920244275a1ab31dce2bd3516_Out_1);


					float2 _Property_1d1664b88dde46c78cc0f201ab5dfb57_Out_0 = _BackgroundTextureOffset;


					float _Split_402f347c92624a60957ff6ae9cd9bf90_R_1 = _Property_1d1664b88dde46c78cc0f201ab5dfb57_Out_0[0];
					float _Split_402f347c92624a60957ff6ae9cd9bf90_G_2 = _Property_1d1664b88dde46c78cc0f201ab5dfb57_Out_0[1];
					float _Split_402f347c92624a60957ff6ae9cd9bf90_B_3 = 0;
					float _Split_402f347c92624a60957ff6ae9cd9bf90_A_4 = 0;


					float _Add_bdab3c1075d143618976bc98bc7fc212_Out_2;
					Unity_Add_float(_Negate_3a9df69920244275a1ab31dce2bd3516_Out_1, _Split_402f347c92624a60957ff6ae9cd9bf90_R_1, _Add_bdab3c1075d143618976bc98bc7fc212_Out_2);


					float _Divide_48c27b30977a4615ade9a1df0a8fcf7f_Out_2;
					Unity_Divide_float(_Divide_85ce70118f0244ffa701d6f40cb44081_Out_2, 2, _Divide_48c27b30977a4615ade9a1df0a8fcf7f_Out_2);


					float _Negate_fcce4f451d594de8ab62ec884e43e5b4_Out_1;
					Unity_Negate_float(_Divide_48c27b30977a4615ade9a1df0a8fcf7f_Out_2, _Negate_fcce4f451d594de8ab62ec884e43e5b4_Out_1);


					float _Add_11f05a5264054e55938b312dbab0a2fb_Out_2;
					Unity_Add_float(_Negate_fcce4f451d594de8ab62ec884e43e5b4_Out_1, 0.5, _Add_11f05a5264054e55938b312dbab0a2fb_Out_2);


					float _Add_786c7bf5abb24ce88ce7b972fc310fc1_Out_2;
					Unity_Add_float(_Split_402f347c92624a60957ff6ae9cd9bf90_G_2, _Add_11f05a5264054e55938b312dbab0a2fb_Out_2, _Add_786c7bf5abb24ce88ce7b972fc310fc1_Out_2);


					float2 _Vector2_c05b4552da9d47e1820bc362d6b386f7_Out_0 = float2(_Add_bdab3c1075d143618976bc98bc7fc212_Out_2, _Add_786c7bf5abb24ce88ce7b972fc310fc1_Out_2);


					float2 _TilingAndOffset_8f243de30f4c49cd863b781dc36148e6_Out_3;
					Unity_TilingAndOffset_float(_Branch_f24779c072b94b3ab519d466a980d882_Out_3, _Vector2_b699a25c7eeb4249977af9b2cd7c371e_Out_0, _Vector2_c05b4552da9d47e1820bc362d6b386f7_Out_0, _TilingAndOffset_8f243de30f4c49cd863b781dc36148e6_Out_3);


					float2 _Rotate_a62ec647d7a34831bfb779de6fb8620b_Out_3;
					Unity_Rotate_Radians_float(_TilingAndOffset_8f243de30f4c49cd863b781dc36148e6_Out_3, float2 (0.5, 0.5), 0, _Rotate_a62ec647d7a34831bfb779de6fb8620b_Out_3);


					float _Property_6270752b401f43bea5b319a991ae0f63_Out_0 = _FlipbookFPS;


					float2 _Property_0180a8eebb13497d826d9a164749065f_Out_0 = _BackgroundFlipbookDim;


					float2 _Maximum_691b113a1f084ab9a934b404b8ed0473_Out_2;
					Unity_Maximum_float2(_Property_0180a8eebb13497d826d9a164749065f_Out_0, float2(1, 1), _Maximum_691b113a1f084ab9a934b404b8ed0473_Out_2);


					float _Split_ab166744021642b887a8ba45b8a210cf_R_1 = _Maximum_691b113a1f084ab9a934b404b8ed0473_Out_2[0];
					float _Split_ab166744021642b887a8ba45b8a210cf_G_2 = _Maximum_691b113a1f084ab9a934b404b8ed0473_Out_2[1];
					float _Split_ab166744021642b887a8ba45b8a210cf_B_3 = 0;
					float _Split_ab166744021642b887a8ba45b8a210cf_A_4 = 0;


					Bindings_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d _FlipbookTexture_e8815b3f4022436d970e88482f842c41;
					_FlipbookTexture_e8815b3f4022436d970e88482f842c41.TimeParameters = _Time;
					float4 _FlipbookTexture_e8815b3f4022436d970e88482f842c41_RGBA_0;
					SG_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d(_Property_cc77d5ad300b4d5786c3d37170f2814f_Out_0, _Rotate_a62ec647d7a34831bfb779de6fb8620b_Out_3, _Property_6270752b401f43bea5b319a991ae0f63_Out_0, _Split_ab166744021642b887a8ba45b8a210cf_R_1, _Split_ab166744021642b887a8ba45b8a210cf_G_2, _FlipbookTexture_e8815b3f4022436d970e88482f842c41, _FlipbookTexture_e8815b3f4022436d970e88482f842c41_RGBA_0);


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_e9b8ed805cf246fc8baf208d16db26d2;
					float4 _ColorMul_e9b8ed805cf246fc8baf208d16db26d2_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(1, _FlipbookTexture_e8815b3f4022436d970e88482f842c41_RGBA_0, _ColorMul_e9b8ed805cf246fc8baf208d16db26d2, _ColorMul_e9b8ed805cf246fc8baf208d16db26d2_OutVector4_1);


					float4 _Multiply_303f6d12dda54c60a087f7c7ea211f9c_Out_2;
					Unity_Multiply_float(_Branch_38a8d8d1db1a4c44908a0394b59799ed_Out_3, _ColorMul_e9b8ed805cf246fc8baf208d16db26d2_OutVector4_1, _Multiply_303f6d12dda54c60a087f7c7ea211f9c_Out_2);


					float _Property_5d5bbfbe88a54873a6220a1173db1598_Out_0 = _BackgroundTextureOpacity;


					float _Saturate_85e0ea745d0b420f8c7af557109742c8_Out_1;
					Unity_Saturate_float(_Property_5d5bbfbe88a54873a6220a1173db1598_Out_0, _Saturate_85e0ea745d0b420f8c7af557109742c8_Out_1);


					float4 _Lerp_769b9862a1584277b7ba848e1bfa5a3e_Out_3;
					Unity_Lerp_float4(_Branch_38a8d8d1db1a4c44908a0394b59799ed_Out_3, _Multiply_303f6d12dda54c60a087f7c7ea211f9c_Out_2, (_Saturate_85e0ea745d0b420f8c7af557109742c8_Out_1.xxxx), _Lerp_769b9862a1584277b7ba848e1bfa5a3e_Out_3);


					#if defined(BACKGROUND_TEXTURE_ON)
					float4 _BackgroundTextureOn_32fedfa7ab7d41b0afacb3a15f240fcb_Out_0 = _Lerp_769b9862a1584277b7ba848e1bfa5a3e_Out_3;
					#else
					float4 _BackgroundTextureOn_32fedfa7ab7d41b0afacb3a15f240fcb_Out_0 = _ColorMul_8b5a02f799a847ca90cceae9bac5a806_OutVector4_1;
#endif


					float _Property_52188ef57de3441aa47eecc324b31fec_Out_0 = _InnerBorderWidth;


					float _Ceiling_49eb0eeed3d741b9bb59333ffa9db139_Out_1;
					Unity_Ceiling_float(_Property_52188ef57de3441aa47eecc324b31fec_Out_0, _Ceiling_49eb0eeed3d741b9bb59333ffa9db139_Out_1);


					float4 _Property_571778229d3f4df280e95bff299ad340_Out_0 = _InnerBorderColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_abbe0a82fd2a475293cc64d632b0d4f0;
					float4 _ColorMul_abbe0a82fd2a475293cc64d632b0d4f0_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(_Ceiling_49eb0eeed3d741b9bb59333ffa9db139_Out_1, _Property_571778229d3f4df280e95bff299ad340_Out_0, _ColorMul_abbe0a82fd2a475293cc64d632b0d4f0, _ColorMul_abbe0a82fd2a475293cc64d632b0d4f0_OutVector4_1);


					float _Property_bc62d2cbb2104db39944e5905f6d29c5_Out_0 = _InnerGradientEnabled;


					float4 _Property_34a422ab863c481fae9ee8f36e8bcd56_Out_0 = _InnerColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_b69659b9b5fa479a82c479b4c722f500;
					float4 _ColorMul_b69659b9b5fa479a82c479b4c722f500_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(1, _Property_34a422ab863c481fae9ee8f36e8bcd56_Out_0, _ColorMul_b69659b9b5fa479a82c479b4c722f500, _ColorMul_b69659b9b5fa479a82c479b4c722f500_OutVector4_1);


					sampler2D _Property_e1c3f6049b7b4839b8a845732ffc9666_Out_0 = _InnerGradient;


					float _Property_83d4dd2e464a4442a96988b84be276f3_Out_0 = _ValueAsGradientTimeInner;


					float _Property_26a7b879e43f4103bcfa27c4520fe7ce_Out_0 = _Value;


					float _Property_2530fc94a4dc4dcd97680f3ad1d1ca5b_Out_0 = _SegmentCount;


					float _Divide_ac8d76451fae485f8eef26df6b87baab_Out_2;
					Unity_Divide_float(_Property_26a7b879e43f4103bcfa27c4520fe7ce_Out_0, _Property_2530fc94a4dc4dcd97680f3ad1d1ca5b_Out_0, _Divide_ac8d76451fae485f8eef26df6b87baab_Out_2);


					float _Saturate_70af6ce522844926b9826ebd86a7b2a3_Out_1;
					Unity_Saturate_float(_Divide_ac8d76451fae485f8eef26df6b87baab_Out_2, _Saturate_70af6ce522844926b9826ebd86a7b2a3_Out_1);


					float _Property_c78366aa4b34494fbee58dc159c96886_Out_0 = _SegmentCount;


					float _Multiply_e7e444e9873b4e219c88c8d915b4db7f_Out_2;
					Unity_Multiply_float(_Property_c78366aa4b34494fbee58dc159c96886_Out_0, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Multiply_e7e444e9873b4e219c88c8d915b4db7f_Out_2);


					float _Property_6354e618daf54bf78663f84a3882be04_Out_0 = _SegmentCount;


					float _Multiply_e0f19c2bba02461fb5df05b995dfedf1_Out_2;
					Unity_Multiply_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_6354e618daf54bf78663f84a3882be04_Out_0, _Multiply_e0f19c2bba02461fb5df05b995dfedf1_Out_2);


					float _Property_8f8a9a29b8954ad7b0033f843cc249f7_Out_0 = _BorderWidth;


					float _Multiply_7ea95f3cc2544c40b2083460077b4e10_Out_2;
					Unity_Multiply_float(_Property_8f8a9a29b8954ad7b0033f843cc249f7_Out_0, _Property_6354e618daf54bf78663f84a3882be04_Out_0, _Multiply_7ea95f3cc2544c40b2083460077b4e10_Out_2);


					float _Multiply_91f5b8de98a040db97ff3ba3a25b238a_Out_2;
					Unity_Multiply_float(_Multiply_7ea95f3cc2544c40b2083460077b4e10_Out_2, -2, _Multiply_91f5b8de98a040db97ff3ba3a25b238a_Out_2);


					float _Add_4e76e5cea69c47b5887fbe315c793afa_Out_2;
					Unity_Add_float(_Multiply_e0f19c2bba02461fb5df05b995dfedf1_Out_2, _Multiply_91f5b8de98a040db97ff3ba3a25b238a_Out_2, _Add_4e76e5cea69c47b5887fbe315c793afa_Out_2);


					float _Property_430a426dccd44859a9819c79d7fb4d70_Out_0 = _SegmentSpacing;


					float _Multiply_cac98e1d7f18401286bbfdbf23ac9ed2_Out_2;
					Unity_Multiply_float(_Property_430a426dccd44859a9819c79d7fb4d70_Out_0, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Multiply_cac98e1d7f18401286bbfdbf23ac9ed2_Out_2);


					float _Subtract_afeaf153379940c59e2fb39741736847_Out_2;
					Unity_Subtract_float(_Add_4e76e5cea69c47b5887fbe315c793afa_Out_2, _Multiply_cac98e1d7f18401286bbfdbf23ac9ed2_Out_2, _Subtract_afeaf153379940c59e2fb39741736847_Out_2);


					float _Divide_fa1c50cccbf041d6ad57049066f89e21_Out_2;
					Unity_Divide_float(_Multiply_e7e444e9873b4e219c88c8d915b4db7f_Out_2, _Subtract_afeaf153379940c59e2fb39741736847_Out_2, _Divide_fa1c50cccbf041d6ad57049066f89e21_Out_2);


					float2 _Vector2_dbd6c693412f4faaac9159747af15d8c_Out_0 = float2(_Divide_fa1c50cccbf041d6ad57049066f89e21_Out_2, 1);


					float _Subtract_8566a5f93a3047f5ab25c0f1274eb012_Out_2;
					Unity_Subtract_float(_Divide_fa1c50cccbf041d6ad57049066f89e21_Out_2, 1, _Subtract_8566a5f93a3047f5ab25c0f1274eb012_Out_2);


					float _Divide_3ca5d408a84c489aa99cfecd2e4cc50d_Out_2;
					Unity_Divide_float(_Subtract_8566a5f93a3047f5ab25c0f1274eb012_Out_2, 2, _Divide_3ca5d408a84c489aa99cfecd2e4cc50d_Out_2);


					float _Negate_c2e8dc71ccc9487887fb751be13cbb52_Out_1;
					Unity_Negate_float(_Divide_3ca5d408a84c489aa99cfecd2e4cc50d_Out_2, _Negate_c2e8dc71ccc9487887fb751be13cbb52_Out_1);


					float2 _Vector2_d67f5e682f02487c9f0577ef45e81998_Out_0 = float2(_Negate_c2e8dc71ccc9487887fb751be13cbb52_Out_1, 0);


					float2 _TilingAndOffset_2736c71dada64ed4be19c5c30e848213_Out_3;
					Unity_TilingAndOffset_float(IN.uv, _Vector2_dbd6c693412f4faaac9159747af15d8c_Out_0, _Vector2_d67f5e682f02487c9f0577ef45e81998_Out_0, _TilingAndOffset_2736c71dada64ed4be19c5c30e848213_Out_3);


					float _Property_357d581be5c545408066803bc6707e94_Out_0 = _InnerGradientRotation;


					float2 _Rotate_764bcb243bb44a5ea231095581990bc4_Out_3;
					Unity_Rotate_Degrees_float(_TilingAndOffset_2736c71dada64ed4be19c5c30e848213_Out_3, float2 (0.5, 0.5), _Property_357d581be5c545408066803bc6707e94_Out_0, _Rotate_764bcb243bb44a5ea231095581990bc4_Out_3);


					float2 _Branch_12b8483a0077442dbae0c9389db451f7_Out_3;
					Unity_Branch_float2(_Property_83d4dd2e464a4442a96988b84be276f3_Out_0, (_Saturate_70af6ce522844926b9826ebd86a7b2a3_Out_1.xx), _Rotate_764bcb243bb44a5ea231095581990bc4_Out_3, _Branch_12b8483a0077442dbae0c9389db451f7_Out_3);


					float4 _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_RGBA_0 = tex2D(_Property_e1c3f6049b7b4839b8a845732ffc9666_Out_0, _Branch_12b8483a0077442dbae0c9389db451f7_Out_3);
					float _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_R_4 = _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_RGBA_0.r;
					float _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_G_5 = _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_RGBA_0.g;
					float _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_B_6 = _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_RGBA_0.b;
					float _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_A_7 = _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_RGBA_0.a;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_d6aadd9f852344b6a891b7405811a4f2;
					float4 _ColorMul_d6aadd9f852344b6a891b7405811a4f2_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(1, _SampleTexture2D_8aa03fbdf713410982cd186fb4a4cc65_RGBA_0, _ColorMul_d6aadd9f852344b6a891b7405811a4f2, _ColorMul_d6aadd9f852344b6a891b7405811a4f2_OutVector4_1);


					float4 _Multiply_f175853b8d204cc398c45847368c632f_Out_2;
					Unity_Multiply_float(_ColorMul_b69659b9b5fa479a82c479b4c722f500_OutVector4_1, _ColorMul_d6aadd9f852344b6a891b7405811a4f2_OutVector4_1, _Multiply_f175853b8d204cc398c45847368c632f_Out_2);


					float4 _Branch_1c57dc8ea0eb41d4a443a750466dbea3_Out_3;
					Unity_Branch_float4(_Property_bc62d2cbb2104db39944e5905f6d29c5_Out_0, _Multiply_f175853b8d204cc398c45847368c632f_Out_2, _ColorMul_b69659b9b5fa479a82c479b4c722f500_OutVector4_1, _Branch_1c57dc8ea0eb41d4a443a750466dbea3_Out_3);


					float4 _Property_84e8ece56a1e4a9ab993a6c2c543b1c5_Out_0 = _PulseColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_20c341d3de2545cbbabb7db4a376d7b9;
					float4 _ColorMul_20c341d3de2545cbbabb7db4a376d7b9_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(1, _Property_84e8ece56a1e4a9ab993a6c2c543b1c5_Out_0, _ColorMul_20c341d3de2545cbbabb7db4a376d7b9, _ColorMul_20c341d3de2545cbbabb7db4a376d7b9_OutVector4_1);


					float _Property_3675c8878fa24eeb96bfaf394eba2bad_Out_0 = _PulsateWhenLow;


					float _Property_eb3ae51fbfb04e9d98eb0fc8eb4f1017_Out_0 = _PulseSpeed;


					float _Multiply_6e3e666c6be6426fb0775f49dd14be42_Out_2;
					Unity_Multiply_float(_Time.y, _Property_eb3ae51fbfb04e9d98eb0fc8eb4f1017_Out_0, _Multiply_6e3e666c6be6426fb0775f49dd14be42_Out_2);


					float _Sine_30cb4bf1935b49bdacf0cb9285f0187e_Out_1;
					Unity_Sine_float(_Multiply_6e3e666c6be6426fb0775f49dd14be42_Out_2, _Sine_30cb4bf1935b49bdacf0cb9285f0187e_Out_1);


					float _Property_00c6cca162314a5fbdf18b3d9fe94f3b_Out_0 = _PulseActivationThreshold;


					float _Property_555b554c70cd417d9176d3a3429c9619_Out_0 = _PulseRamp;


					float _Multiply_9c822bb5f88e4c9485a2b04787480474_Out_2;
					Unity_Multiply_float(_Property_00c6cca162314a5fbdf18b3d9fe94f3b_Out_0, _Property_555b554c70cd417d9176d3a3429c9619_Out_0, _Multiply_9c822bb5f88e4c9485a2b04787480474_Out_2);


					float _Subtract_c53c2d83bd8a431fa76c3d768f441f4e_Out_2;
					Unity_Subtract_float(_Property_00c6cca162314a5fbdf18b3d9fe94f3b_Out_0, _Multiply_9c822bb5f88e4c9485a2b04787480474_Out_2, _Subtract_c53c2d83bd8a431fa76c3d768f441f4e_Out_2);


					float _Property_57007cf1419840e48f41b3f8bcfe0cfa_Out_0 = _Value;


					float _Property_ca7dfa02a8954ad8b1ddd720f77081cc_Out_0 = _SegmentCount;


					float _Divide_af6b90fda29c45f6b85804091a363d06_Out_2;
					Unity_Divide_float(_Property_57007cf1419840e48f41b3f8bcfe0cfa_Out_0, _Property_ca7dfa02a8954ad8b1ddd720f77081cc_Out_0, _Divide_af6b90fda29c45f6b85804091a363d06_Out_2);


					float _InverseLerp_799da47f1fc24afda74ee593f7fdfd41_Out_3;
					Unity_InverseLerp_float(_Subtract_c53c2d83bd8a431fa76c3d768f441f4e_Out_2, _Property_00c6cca162314a5fbdf18b3d9fe94f3b_Out_0, _Divide_af6b90fda29c45f6b85804091a363d06_Out_2, _InverseLerp_799da47f1fc24afda74ee593f7fdfd41_Out_3);


					float _Clamp_8464814f121c4cc886a97784d1ff629c_Out_3;
					Unity_Clamp_float(_InverseLerp_799da47f1fc24afda74ee593f7fdfd41_Out_3, 0, 1, _Clamp_8464814f121c4cc886a97784d1ff629c_Out_3);


					float _OneMinus_33971be7ee1343f79c261225ea928196_Out_1;
					Unity_OneMinus_float(_Clamp_8464814f121c4cc886a97784d1ff629c_Out_3, _OneMinus_33971be7ee1343f79c261225ea928196_Out_1);


					float2 _Vector2_96b08a5f6bbd4d8a9d17765184a98d37_Out_0 = float2(0, _OneMinus_33971be7ee1343f79c261225ea928196_Out_1);


					float _Remap_50dc75e93d434ce08f9f380aa30f1463_Out_3;
					Unity_Remap_float(_Sine_30cb4bf1935b49bdacf0cb9285f0187e_Out_1, float2 (-1, 1), _Vector2_96b08a5f6bbd4d8a9d17765184a98d37_Out_0, _Remap_50dc75e93d434ce08f9f380aa30f1463_Out_3);


					float _Branch_caf6c126c4c542278fb661002684a610_Out_3;
					Unity_Branch_float(_Property_3675c8878fa24eeb96bfaf394eba2bad_Out_0, _Remap_50dc75e93d434ce08f9f380aa30f1463_Out_3, 0, _Branch_caf6c126c4c542278fb661002684a610_Out_3);


					float4 _Lerp_861b45f90f1d4730bda18e5f7541bb93_Out_3;
					Unity_Lerp_float4(_Branch_1c57dc8ea0eb41d4a443a750466dbea3_Out_3, _ColorMul_20c341d3de2545cbbabb7db4a376d7b9_OutVector4_1, (_Branch_caf6c126c4c542278fb661002684a610_Out_3.xxxx), _Lerp_861b45f90f1d4730bda18e5f7541bb93_Out_3);


					sampler2D _Property_9b6d19d174654272b7390854dad00671_Out_0 = _InnerTexture;


					float _Property_ac56299c95864883858f2a546b698139_Out_0 = _SegmentCount;


					float2 _Vector2_da2f09f02c1648e8988f505361e763b4_Out_0 = float2(_Property_ac56299c95864883858f2a546b698139_Out_0, 1);


					float2 _TilingAndOffset_274e89859a9f44aaab1d94a377a7618f_Out_3;
					Unity_TilingAndOffset_float(IN.uv, _Vector2_da2f09f02c1648e8988f505361e763b4_Out_0, float2 (0, 0), _TilingAndOffset_274e89859a9f44aaab1d94a377a7618f_Out_3);


					float _Split_cd4bb191688445b4a4b01df8a9aaf402_R_1 = _TilingAndOffset_274e89859a9f44aaab1d94a377a7618f_Out_3[0];
					float _Split_cd4bb191688445b4a4b01df8a9aaf402_G_2 = _TilingAndOffset_274e89859a9f44aaab1d94a377a7618f_Out_3[1];
					float _Split_cd4bb191688445b4a4b01df8a9aaf402_B_3 = 0;
					float _Split_cd4bb191688445b4a4b01df8a9aaf402_A_4 = 0;


					float _Modulo_38ffec72cd3144ee9bfcf67fabf45b85_Out_2;
					Unity_Modulo_float(_Split_cd4bb191688445b4a4b01df8a9aaf402_R_1, 1, _Modulo_38ffec72cd3144ee9bfcf67fabf45b85_Out_2);


					float2 _Vector2_5651167a54304d6ebb1dd2f68d0a425a_Out_0 = float2(_Modulo_38ffec72cd3144ee9bfcf67fabf45b85_Out_2, _Split_cd4bb191688445b4a4b01df8a9aaf402_G_2);


					float2 _UV_225bf73d621d48728f43e5a7f9f18cc8_Out_0 = IN.uv;


					float2 _Branch_7cda748d68c1439cbfded14399c5de36_Out_3;
					Unity_Branch_float2(1, _Vector2_5651167a54304d6ebb1dd2f68d0a425a_Out_0, (_UV_225bf73d621d48728f43e5a7f9f18cc8_Out_0.xy), _Branch_7cda748d68c1439cbfded14399c5de36_Out_3);


					float2 _Property_4ccb991aa8ed4782ab2e4eb766ac01d0_Out_0 = _InnerTextureTiling;


					float _Split_583c52b4ff04477191be079dda19c777_R_1 = _Property_4ccb991aa8ed4782ab2e4eb766ac01d0_Out_0[0];
					float _Split_583c52b4ff04477191be079dda19c777_G_2 = _Property_4ccb991aa8ed4782ab2e4eb766ac01d0_Out_0[1];
					float _Split_583c52b4ff04477191be079dda19c777_B_3 = 0;
					float _Split_583c52b4ff04477191be079dda19c777_A_4 = 0;


					float _Multiply_5069629c51de461cb06484506a285864_Out_2;
					Unity_Multiply_float(_Split_583c52b4ff04477191be079dda19c777_R_1, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Multiply_5069629c51de461cb06484506a285864_Out_2);


					float _Property_ae5fa37044f94694ac0f8ebbbe313ab3_Out_0 = _SegmentCount;


					float _Branch_a7eb3d2576754163ad2c5cce984554c9_Out_3;
					Unity_Branch_float(1, 1, _Property_ae5fa37044f94694ac0f8ebbbe313ab3_Out_0, _Branch_a7eb3d2576754163ad2c5cce984554c9_Out_3);


					float _Multiply_b7f9624021f040ba9755e6b41a449686_Out_2;
					Unity_Multiply_float(_Multiply_5069629c51de461cb06484506a285864_Out_2, _Branch_a7eb3d2576754163ad2c5cce984554c9_Out_3, _Multiply_b7f9624021f040ba9755e6b41a449686_Out_2);


					float _Multiply_4256ec374cc74d7bb879b88f33b22852_Out_2;
					Unity_Multiply_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Branch_a7eb3d2576754163ad2c5cce984554c9_Out_3, _Multiply_4256ec374cc74d7bb879b88f33b22852_Out_2);


					float _Add_319768469d704582bce5ee9664310123_Out_2;
					Unity_Add_float(_Multiply_4256ec374cc74d7bb879b88f33b22852_Out_2, _Multiply_91f5b8de98a040db97ff3ba3a25b238a_Out_2, _Add_319768469d704582bce5ee9664310123_Out_2);


					float _Subtract_33cd672d8dea404f8a60ac4d31fcb394_Out_2;
					Unity_Subtract_float(_Add_319768469d704582bce5ee9664310123_Out_2, _Multiply_cac98e1d7f18401286bbfdbf23ac9ed2_Out_2, _Subtract_33cd672d8dea404f8a60ac4d31fcb394_Out_2);


					float _Divide_905b850fa7e144b18bee70522c3dbdb2_Out_2;
					Unity_Divide_float(_Multiply_b7f9624021f040ba9755e6b41a449686_Out_2, _Subtract_33cd672d8dea404f8a60ac4d31fcb394_Out_2, _Divide_905b850fa7e144b18bee70522c3dbdb2_Out_2);


					float2 _Property_6f3134a8ea7b4c5c8f56594605d3ff30_Out_0 = _InnerTextureTiling;


					float _Split_9897b67a224d4c9ab614c81e95df4abf_R_1 = _Property_6f3134a8ea7b4c5c8f56594605d3ff30_Out_0[0];
					float _Split_9897b67a224d4c9ab614c81e95df4abf_G_2 = _Property_6f3134a8ea7b4c5c8f56594605d3ff30_Out_0[1];
					float _Split_9897b67a224d4c9ab614c81e95df4abf_B_3 = 0;
					float _Split_9897b67a224d4c9ab614c81e95df4abf_A_4 = 0;


					float _Property_01c87306425349c7b21a8e64c9e7490d_Out_0 = _BorderWidth;


					float _Divide_80ebce04f9d24c8b88848c4ac493c1f0_Out_2;
					Unity_Divide_float(2, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, _Divide_80ebce04f9d24c8b88848c4ac493c1f0_Out_2);


					float _Multiply_342c7fa8d8c0442eaf278a246ba0f73b_Out_2;
					Unity_Multiply_float(_Property_01c87306425349c7b21a8e64c9e7490d_Out_0, _Divide_80ebce04f9d24c8b88848c4ac493c1f0_Out_2, _Multiply_342c7fa8d8c0442eaf278a246ba0f73b_Out_2);


					float _Subtract_e3f1f3cd17c84b24891fb8345a33944c_Out_2;
					Unity_Subtract_float(_SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_R_4, _Multiply_342c7fa8d8c0442eaf278a246ba0f73b_Out_2, _Subtract_e3f1f3cd17c84b24891fb8345a33944c_Out_2);


					float _Divide_b30a15b95ade43308edff0933893330e_Out_2;
					Unity_Divide_float(_Split_9897b67a224d4c9ab614c81e95df4abf_G_2, _Subtract_e3f1f3cd17c84b24891fb8345a33944c_Out_2, _Divide_b30a15b95ade43308edff0933893330e_Out_2);


					float2 _Vector2_65ff76e6ac3a47a3a2312d103de77c58_Out_0 = float2(_Divide_905b850fa7e144b18bee70522c3dbdb2_Out_2, _Divide_b30a15b95ade43308edff0933893330e_Out_2);


					float2 _Property_56e8ca2841204a30ab18a24b7d920027_Out_0 = _InnerTextureTiling;


					float _Split_f2571bf1248e4ecd9d3a22755d29d166_R_1 = _Property_56e8ca2841204a30ab18a24b7d920027_Out_0[0];
					float _Split_f2571bf1248e4ecd9d3a22755d29d166_G_2 = _Property_56e8ca2841204a30ab18a24b7d920027_Out_0[1];
					float _Split_f2571bf1248e4ecd9d3a22755d29d166_B_3 = 0;
					float _Split_f2571bf1248e4ecd9d3a22755d29d166_A_4 = 0;


					float _Subtract_60d46a12529849929809296c1faca162_Out_2;
					Unity_Subtract_float(_Divide_905b850fa7e144b18bee70522c3dbdb2_Out_2, _Split_f2571bf1248e4ecd9d3a22755d29d166_R_1, _Subtract_60d46a12529849929809296c1faca162_Out_2);


					float _Divide_71d648bfa7d1452f8f34a1bdfbef19af_Out_2;
					Unity_Divide_float(_Subtract_60d46a12529849929809296c1faca162_Out_2, 2, _Divide_71d648bfa7d1452f8f34a1bdfbef19af_Out_2);


					float _Negate_02c4a18ca93d408a96d47fa7aba60d51_Out_1;
					Unity_Negate_float(_Divide_71d648bfa7d1452f8f34a1bdfbef19af_Out_2, _Negate_02c4a18ca93d408a96d47fa7aba60d51_Out_1);


					float2 _Property_343220c1f9a645d79964776739f34d06_Out_0 = _InnerTextureOffset;


					float _Split_b6b83e8c2d5843af8f5576003d5c1bc7_R_1 = _Property_343220c1f9a645d79964776739f34d06_Out_0[0];
					float _Split_b6b83e8c2d5843af8f5576003d5c1bc7_G_2 = _Property_343220c1f9a645d79964776739f34d06_Out_0[1];
					float _Split_b6b83e8c2d5843af8f5576003d5c1bc7_B_3 = 0;
					float _Split_b6b83e8c2d5843af8f5576003d5c1bc7_A_4 = 0;


					float _Add_09ca1873a26149379e41cb6e9423fd6f_Out_2;
					Unity_Add_float(_Negate_02c4a18ca93d408a96d47fa7aba60d51_Out_1, _Split_b6b83e8c2d5843af8f5576003d5c1bc7_R_1, _Add_09ca1873a26149379e41cb6e9423fd6f_Out_2);


					float _Property_3b5d6abc6aa14fc5becb757a0fd878b1_Out_0 = _OffsetTextureWithValue;


					float _Property_0d0040f3ecd34b7383fd42338ba628c0_Out_0 = _CenterFill;


					float _Property_6a4714a16b9a4562aec9a13dcc7e4507_Out_0 = _Value;


					float _Property_774ee72ffc1d4ffcb3f7c24e15da3b52_Out_0 = _SegmentCount;


					float _Minimum_e510a820b1124a40a18169c8acf83248_Out_2;
					Unity_Minimum_float(_Property_6a4714a16b9a4562aec9a13dcc7e4507_Out_0, _Property_774ee72ffc1d4ffcb3f7c24e15da3b52_Out_0, _Minimum_e510a820b1124a40a18169c8acf83248_Out_2);


					float _Modulo_106b12946870425894254ab705a0ba45_Out_2;
					Unity_Modulo_float(_Minimum_e510a820b1124a40a18169c8acf83248_Out_2, 1, _Modulo_106b12946870425894254ab705a0ba45_Out_2);


					float _OneMinus_c8c90224845d4fd182b5caaf33a4401e_Out_1;
					Unity_OneMinus_float(_Modulo_106b12946870425894254ab705a0ba45_Out_2, _OneMinus_c8c90224845d4fd182b5caaf33a4401e_Out_1);


					float _Divide_c965dff883f54b078140eedf82ce0a28_Out_2;
					Unity_Divide_float(_Property_6a4714a16b9a4562aec9a13dcc7e4507_Out_0, _Property_774ee72ffc1d4ffcb3f7c24e15da3b52_Out_0, _Divide_c965dff883f54b078140eedf82ce0a28_Out_2);


					float _Saturate_14066443928446c3bd520ddb80a1233b_Out_1;
					Unity_Saturate_float(_Divide_c965dff883f54b078140eedf82ce0a28_Out_2, _Saturate_14066443928446c3bd520ddb80a1233b_Out_1);


					float _OneMinus_66e47f14e4a24b4f9d720004340150b7_Out_1;
					Unity_OneMinus_float(_Saturate_14066443928446c3bd520ddb80a1233b_Out_1, _OneMinus_66e47f14e4a24b4f9d720004340150b7_Out_1);


					float _Branch_fc11bb0615b445e485100dea294379e8_Out_3;
					Unity_Branch_float(1, _OneMinus_c8c90224845d4fd182b5caaf33a4401e_Out_1, _OneMinus_66e47f14e4a24b4f9d720004340150b7_Out_1, _Branch_fc11bb0615b445e485100dea294379e8_Out_3);


					float _Property_3ca166a0d7ad43d7b900c6b13bf8bee7_Out_0 = _Value;


					float _Floor_5f7b5cecd28d4122a6ed5e4fb6453aa1_Out_1;
					Unity_Floor_float(_Property_3ca166a0d7ad43d7b900c6b13bf8bee7_Out_0, _Floor_5f7b5cecd28d4122a6ed5e4fb6453aa1_Out_1);


					float _Property_b9e9d7dc9aaa40e19463494fc405da7c_Out_0 = _SegmentCount;


					float _Divide_7a97ef4882c248c69b13e257b6d37854_Out_2;
					Unity_Divide_float(_Floor_5f7b5cecd28d4122a6ed5e4fb6453aa1_Out_1, _Property_b9e9d7dc9aaa40e19463494fc405da7c_Out_0, _Divide_7a97ef4882c248c69b13e257b6d37854_Out_2);


					float _Branch_e57e40b97df3445981d49706398ed5eb_Out_3;
					Unity_Branch_float(1, _Divide_7a97ef4882c248c69b13e257b6d37854_Out_2, 0, _Branch_e57e40b97df3445981d49706398ed5eb_Out_3);


					float2 _UV_fafaf6d9c4ff4c498482460a851dd51e_Out_0 = IN.uv;


					float _Split_c0ccb9dfe890454db91bd6b02dd1fd59_R_1 = _UV_fafaf6d9c4ff4c498482460a851dd51e_Out_0[0];
					float _Split_c0ccb9dfe890454db91bd6b02dd1fd59_G_2 = _UV_fafaf6d9c4ff4c498482460a851dd51e_Out_0[1];


					float _Step_b378f7718a34414ba2df8f4a7d9a3f97_Out_2;
					Unity_Step_float(_Branch_e57e40b97df3445981d49706398ed5eb_Out_3, _Split_c0ccb9dfe890454db91bd6b02dd1fd59_R_1, _Step_b378f7718a34414ba2df8f4a7d9a3f97_Out_2);


					float _Lerp_62481f6515874a1e9ee5602480173847_Out_3;
					Unity_Lerp_float(0, _Branch_fc11bb0615b445e485100dea294379e8_Out_3, _Step_b378f7718a34414ba2df8f4a7d9a3f97_Out_2, _Lerp_62481f6515874a1e9ee5602480173847_Out_3);


					float _Branch_f406752a42604daf891566b1068afc74_Out_3;
					Unity_Branch_float(_Property_0d0040f3ecd34b7383fd42338ba628c0_Out_0, 0, _Lerp_62481f6515874a1e9ee5602480173847_Out_3, _Branch_f406752a42604daf891566b1068afc74_Out_3);


					float _Branch_45fa81a695ef47359142fa04182b5a4f_Out_3;
					Unity_Branch_float(_Property_3b5d6abc6aa14fc5becb757a0fd878b1_Out_0, _Branch_f406752a42604daf891566b1068afc74_Out_3, 0, _Branch_45fa81a695ef47359142fa04182b5a4f_Out_3);


					float2 _Property_d69f45c7183c475aa2d906bb39d2b8af_Out_0 = _InnerTextureTiling;


					float _Split_60723839211b4cbcbaf49c304fc15265_R_1 = _Property_d69f45c7183c475aa2d906bb39d2b8af_Out_0[0];
					float _Split_60723839211b4cbcbaf49c304fc15265_G_2 = _Property_d69f45c7183c475aa2d906bb39d2b8af_Out_0[1];
					float _Split_60723839211b4cbcbaf49c304fc15265_B_3 = 0;
					float _Split_60723839211b4cbcbaf49c304fc15265_A_4 = 0;


					float _Multiply_ad4791ba63274afcb794d946ab8ec33a_Out_2;
					Unity_Multiply_float(_Branch_45fa81a695ef47359142fa04182b5a4f_Out_3, _Split_60723839211b4cbcbaf49c304fc15265_R_1, _Multiply_ad4791ba63274afcb794d946ab8ec33a_Out_2);


					float _Add_732983d449a2487197dcb501e3973fea_Out_2;
					Unity_Add_float(_Add_09ca1873a26149379e41cb6e9423fd6f_Out_2, _Multiply_ad4791ba63274afcb794d946ab8ec33a_Out_2, _Add_732983d449a2487197dcb501e3973fea_Out_2);


					float _Divide_d7f12348a5634c8ea77033c7f83716e7_Out_2;
					Unity_Divide_float(_Divide_b30a15b95ade43308edff0933893330e_Out_2, 2, _Divide_d7f12348a5634c8ea77033c7f83716e7_Out_2);


					float _Negate_447681278dda4f1e899dccea80cd46b5_Out_1;
					Unity_Negate_float(_Divide_d7f12348a5634c8ea77033c7f83716e7_Out_2, _Negate_447681278dda4f1e899dccea80cd46b5_Out_1);


					float _Add_c8576a1478674ce089293da57b3fa361_Out_2;
					Unity_Add_float(_Negate_447681278dda4f1e899dccea80cd46b5_Out_1, 0.5, _Add_c8576a1478674ce089293da57b3fa361_Out_2);


					float _Add_c9bcb63d56a14081bb9511a3dfc2195b_Out_2;
					Unity_Add_float(_Split_b6b83e8c2d5843af8f5576003d5c1bc7_G_2, _Add_c8576a1478674ce089293da57b3fa361_Out_2, _Add_c9bcb63d56a14081bb9511a3dfc2195b_Out_2);


					float2 _Vector2_696828c8043348f18cd0969fd64e5b45_Out_0 = float2(_Add_732983d449a2487197dcb501e3973fea_Out_2, _Add_c9bcb63d56a14081bb9511a3dfc2195b_Out_2);


					float2 _TilingAndOffset_20f7eac37d3c4461b1dfe1ee90148c17_Out_3;
					Unity_TilingAndOffset_float(_Branch_7cda748d68c1439cbfded14399c5de36_Out_3, _Vector2_65ff76e6ac3a47a3a2312d103de77c58_Out_0, _Vector2_696828c8043348f18cd0969fd64e5b45_Out_0, _TilingAndOffset_20f7eac37d3c4461b1dfe1ee90148c17_Out_3);


					float _Property_e5546ba05d1a4a7db5e8c637133dbada_Out_0 = _InnerTextureRotation;


					float2 _Rotate_e772b13677424de8b0aade595f7d3776_Out_3;
					Unity_Rotate_Degrees_float(_TilingAndOffset_20f7eac37d3c4461b1dfe1ee90148c17_Out_3, float2 (0.5, 0.5), _Property_e5546ba05d1a4a7db5e8c637133dbada_Out_0, _Rotate_e772b13677424de8b0aade595f7d3776_Out_3);


					float _Property_34373144853042528907fe83dbda2531_Out_0 = _FlipbookFPS;


					float2 _Property_5128ec143ac04e9aaa8aee11070dcd76_Out_0 = _InnerFlipbookDim;


					float2 _Maximum_3b14d4db8ecb492296ef405522a5b8ee_Out_2;
					Unity_Maximum_float2(_Property_5128ec143ac04e9aaa8aee11070dcd76_Out_0, float2(1, 1), _Maximum_3b14d4db8ecb492296ef405522a5b8ee_Out_2);


					float _Split_2ef683a463ca4d18af273b4785f7409c_R_1 = _Maximum_3b14d4db8ecb492296ef405522a5b8ee_Out_2[0];
					float _Split_2ef683a463ca4d18af273b4785f7409c_G_2 = _Maximum_3b14d4db8ecb492296ef405522a5b8ee_Out_2[1];
					float _Split_2ef683a463ca4d18af273b4785f7409c_B_3 = 0;
					float _Split_2ef683a463ca4d18af273b4785f7409c_A_4 = 0;


					Bindings_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d _FlipbookTexture_706c69e9dd5d4b0d8cc1d4bb490c3dc3;
					_FlipbookTexture_706c69e9dd5d4b0d8cc1d4bb490c3dc3.TimeParameters = _Time;
					float4 _FlipbookTexture_706c69e9dd5d4b0d8cc1d4bb490c3dc3_RGBA_0;
					SG_FlipbookTexture_d4cffc7b26872854cb2c707663d47e1d(_Property_9b6d19d174654272b7390854dad00671_Out_0, _Rotate_e772b13677424de8b0aade595f7d3776_Out_3, _Property_34373144853042528907fe83dbda2531_Out_0, _Split_2ef683a463ca4d18af273b4785f7409c_R_1, _Split_2ef683a463ca4d18af273b4785f7409c_G_2, _FlipbookTexture_706c69e9dd5d4b0d8cc1d4bb490c3dc3, _FlipbookTexture_706c69e9dd5d4b0d8cc1d4bb490c3dc3_RGBA_0);


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_b681a87fbf22420d950a3ec4ee36a1a1;
					float4 _ColorMul_b681a87fbf22420d950a3ec4ee36a1a1_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(1, _FlipbookTexture_706c69e9dd5d4b0d8cc1d4bb490c3dc3_RGBA_0, _ColorMul_b681a87fbf22420d950a3ec4ee36a1a1, _ColorMul_b681a87fbf22420d950a3ec4ee36a1a1_OutVector4_1);


					float4 _Multiply_6e470d25f4ef4e12a2eb4ade44eb8355_Out_2;
					Unity_Multiply_float(_Lerp_861b45f90f1d4730bda18e5f7541bb93_Out_3, _ColorMul_b681a87fbf22420d950a3ec4ee36a1a1_OutVector4_1, _Multiply_6e470d25f4ef4e12a2eb4ade44eb8355_Out_2);


					float _Property_7205dc77f71649079e01c4ba045ee5ab_Out_0 = _InnerTextureOpacity;


					float _Saturate_e355e033326045a4970298fa4038a4d3_Out_1;
					Unity_Saturate_float(_Property_7205dc77f71649079e01c4ba045ee5ab_Out_0, _Saturate_e355e033326045a4970298fa4038a4d3_Out_1);


					float4 _Lerp_90721a1598514cf8995bcfd97a619402_Out_3;
					Unity_Lerp_float4(_Lerp_861b45f90f1d4730bda18e5f7541bb93_Out_3, _Multiply_6e470d25f4ef4e12a2eb4ade44eb8355_Out_2, (_Saturate_e355e033326045a4970298fa4038a4d3_Out_1.xxxx), _Lerp_90721a1598514cf8995bcfd97a619402_Out_3);


					float4 _Lerp_e530cd86837049d3862a98798767721e_Out_3;
					Unity_Lerp_float4(_ColorMul_b69659b9b5fa479a82c479b4c722f500_OutVector4_1, _ColorMul_20c341d3de2545cbbabb7db4a376d7b9_OutVector4_1, (_Branch_caf6c126c4c542278fb661002684a610_Out_3.xxxx), _Lerp_e530cd86837049d3862a98798767721e_Out_3);


					#if defined(INNER_TEXTURE_ON)
					float4 _InnerTextureOn_d3ae2e993a6d4e2e80e90afb08ebe6a6_Out_0 = _Lerp_90721a1598514cf8995bcfd97a619402_Out_3;
					#else
					float4 _InnerTextureOn_d3ae2e993a6d4e2e80e90afb08ebe6a6_Out_0 = _Lerp_e530cd86837049d3862a98798767721e_Out_3;
#endif


					float _Property_51e60f2bcb9048c4bcb455425e0b697d_Out_0 = _AntiAlias;


					float _Property_8bf443e1590c48b7a7050ad9152fcfd7_Out_0 = _SegmentCount;


					float _Modulo_966c5b1300df48e6bf337ab95cd8a60c_Out_2;
					Unity_Modulo_float(_Property_8bf443e1590c48b7a7050ad9152fcfd7_Out_0, 1, _Modulo_966c5b1300df48e6bf337ab95cd8a60c_Out_2);


					float _Comparison_4768e3fbc5754a008fd7fd158a63d37c_Out_2;
					Unity_Comparison_Equal_float(_Modulo_966c5b1300df48e6bf337ab95cd8a60c_Out_2, 0, _Comparison_4768e3fbc5754a008fd7fd158a63d37c_Out_2);


					float _Property_d2ab34f41bca47afb400d7c1dbb9a1e1_Out_0 = _CenterFill;


					float _And_9557254d5bb748fe8f237334ad8f69d2_Out_2;
					Unity_And_float(_Comparison_4768e3fbc5754a008fd7fd158a63d37c_Out_2, _Property_d2ab34f41bca47afb400d7c1dbb9a1e1_Out_0, _And_9557254d5bb748fe8f237334ad8f69d2_Out_2);


					float _Property_85204b5ce5ef4563a9505c3691c7bb4a_Out_0 = _CircleScale;


					float _Property_f976d12fab04408e9eafeb5e57b19df3_Out_0 = _Radius;


					float _Property_fcfbe495ada34291b157c7707b6808c9_Out_0 = _Arc;


					Bindings_CircleSize_c061357d2877b5046b04d83f9968414a _CircleSize_b13c3c2739744b78bb12c39877c3df6a;
					_CircleSize_b13c3c2739744b78bb12c39877c3df6a.uv = IN.uv;
					float _CircleSize_b13c3c2739744b78bb12c39877c3df6a_Length_1;
					SG_CircleSize_c061357d2877b5046b04d83f9968414a(_Property_f976d12fab04408e9eafeb5e57b19df3_Out_0, 0.3, _Property_fcfbe495ada34291b157c7707b6808c9_Out_0, 1, _CircleSize_b13c3c2739744b78bb12c39877c3df6a, _CircleSize_b13c3c2739744b78bb12c39877c3df6a_Length_1);


					float _Property_76db8b3c5aae4fbd85243801fe980f85_Out_0 = _Width;


					float3 _Vector3_3fe6ddbac56b417cb0dc841a6f2f190c_Out_0 = float3(_CircleSize_b13c3c2739744b78bb12c39877c3df6a_Length_1, _Property_76db8b3c5aae4fbd85243801fe980f85_Out_0, 0);


					Bindings_ObjectScale_45d3a2024b3aace4f89e012df31ccd48 _ObjectScale_8da4ae2c09644004953851ebbcaa342c;
					float3 _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Scale_2;
					float2 _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Scale2D_4;
					float _ObjectScale_8da4ae2c09644004953851ebbcaa342c_X_5;
					float _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Y_6;
					float _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Z_7;
					SG_ObjectScale_45d3a2024b3aace4f89e012df31ccd48(_Property_85204b5ce5ef4563a9505c3691c7bb4a_Out_0, _Vector3_3fe6ddbac56b417cb0dc841a6f2f190c_Out_0, _ObjectScale_8da4ae2c09644004953851ebbcaa342c, _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Scale_2, _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Scale2D_4, _ObjectScale_8da4ae2c09644004953851ebbcaa342c_X_5, _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Y_6, _ObjectScale_8da4ae2c09644004953851ebbcaa342c_Z_7);


					float _Property_f2e3160448884dbc9108b4579e26eb8a_Out_0 = _SegmentCount;


					float _Divide_8c51e66d2cbe4e68b70e8c1e79b8be2b_Out_2;
					Unity_Divide_float(_ObjectScale_8da4ae2c09644004953851ebbcaa342c_X_5, _Property_f2e3160448884dbc9108b4579e26eb8a_Out_0, _Divide_8c51e66d2cbe4e68b70e8c1e79b8be2b_Out_2);


					float _Property_6d14e21cc6b7478c9b891bddd8fbd4e9_Out_0 = _BorderWidth;


					float _Multiply_2e139124570b4e039ef31d625c415b21_Out_2;
					Unity_Multiply_float(_Property_6d14e21cc6b7478c9b891bddd8fbd4e9_Out_0, _Property_f2e3160448884dbc9108b4579e26eb8a_Out_0, _Multiply_2e139124570b4e039ef31d625c415b21_Out_2);


					float _Multiply_ed3653ebaf7645b68677dc74fd7dc0e8_Out_2;
					Unity_Multiply_float(_Multiply_2e139124570b4e039ef31d625c415b21_Out_2, 2, _Multiply_ed3653ebaf7645b68677dc74fd7dc0e8_Out_2);


					float _Divide_652464ed272d4fd996a73efe21359ee4_Out_2;
					Unity_Divide_float(_Multiply_ed3653ebaf7645b68677dc74fd7dc0e8_Out_2, _ObjectScale_8da4ae2c09644004953851ebbcaa342c_X_5, _Divide_652464ed272d4fd996a73efe21359ee4_Out_2);


					float _Property_5b22eebcb9704bf79da9f3d99e26a095_Out_0 = _SegmentSpacing;


					float _Add_6a85160a13d2449aa4433e53faadc439_Out_2;
					Unity_Add_float(_Divide_652464ed272d4fd996a73efe21359ee4_Out_2, _Property_5b22eebcb9704bf79da9f3d99e26a095_Out_0, _Add_6a85160a13d2449aa4433e53faadc439_Out_2);


					float _Multiply_a9f6b2da8cce403198dd47a54fc18099_Out_2;
					Unity_Multiply_float(_Add_6a85160a13d2449aa4433e53faadc439_Out_2, _Divide_8c51e66d2cbe4e68b70e8c1e79b8be2b_Out_2, _Multiply_a9f6b2da8cce403198dd47a54fc18099_Out_2);


					float _Subtract_22c4e48ff51049f6a6a38c865b4b7a00_Out_2;
					Unity_Subtract_float(_Divide_8c51e66d2cbe4e68b70e8c1e79b8be2b_Out_2, _Multiply_a9f6b2da8cce403198dd47a54fc18099_Out_2, _Subtract_22c4e48ff51049f6a6a38c865b4b7a00_Out_2);


					float _Property_de6b69e233314cd9a267fc2ae1607aeb_Out_0 = _SegmentCount;


					float _Property_6639574c616c4a4e97a4763fbf8ae33a_Out_0 = _Value;


					float _Float_c2102ce7fcc74e94a7e7665b392b3c89_Out_0 = _Property_6639574c616c4a4e97a4763fbf8ae33a_Out_0;


					float _Maximum_570d73cf613b485cbf071cf683d8f72d_Out_2;
					Unity_Maximum_float(0, _Float_c2102ce7fcc74e94a7e7665b392b3c89_Out_0, _Maximum_570d73cf613b485cbf071cf683d8f72d_Out_2);


					float _Subtract_7469015a1ed64cc29aca951c49f6e31f_Out_2;
					Unity_Subtract_float(_Property_de6b69e233314cd9a267fc2ae1607aeb_Out_0, _Maximum_570d73cf613b485cbf071cf683d8f72d_Out_2, _Subtract_7469015a1ed64cc29aca951c49f6e31f_Out_2);


					float _Maximum_3ae52f4056564a98b83da9e9013083fc_Out_2;
					Unity_Maximum_float(_Subtract_7469015a1ed64cc29aca951c49f6e31f_Out_2, 0, _Maximum_3ae52f4056564a98b83da9e9013083fc_Out_2);


					float _Divide_00c9cdbf8f1e4677b7b16bc09a287cfe_Out_2;
					Unity_Divide_float(_Maximum_3ae52f4056564a98b83da9e9013083fc_Out_2, 2, _Divide_00c9cdbf8f1e4677b7b16bc09a287cfe_Out_2);


					float _Modulo_ba5168b7e50a44928f9f51ef22b76e36_Out_2;
					Unity_Modulo_float(_Divide_00c9cdbf8f1e4677b7b16bc09a287cfe_Out_2, 1, _Modulo_ba5168b7e50a44928f9f51ef22b76e36_Out_2);


					float _OneMinus_f3e3ad42f1fa4793abdbed53aaf4fae8_Out_1;
					Unity_OneMinus_float(_Modulo_ba5168b7e50a44928f9f51ef22b76e36_Out_2, _OneMinus_f3e3ad42f1fa4793abdbed53aaf4fae8_Out_1);


					float _Multiply_796ea4bb762345339888a2bdeecf17da_Out_2;
					Unity_Multiply_float(_Subtract_22c4e48ff51049f6a6a38c865b4b7a00_Out_2, _OneMinus_f3e3ad42f1fa4793abdbed53aaf4fae8_Out_1, _Multiply_796ea4bb762345339888a2bdeecf17da_Out_2);


					float _Negate_2b188f8faaab4badb2772dbf9332765a_Out_1;
					Unity_Negate_float(_Multiply_796ea4bb762345339888a2bdeecf17da_Out_2, _Negate_2b188f8faaab4badb2772dbf9332765a_Out_1);


					float _Floor_caae104f9efd4e7682f3381bd310b197_Out_1;
					Unity_Floor_float(_Divide_00c9cdbf8f1e4677b7b16bc09a287cfe_Out_2, _Floor_caae104f9efd4e7682f3381bd310b197_Out_1);


					float _Divide_dd779c82ec8d48839fbbef931770d546_Out_2;
					Unity_Divide_float(_Floor_caae104f9efd4e7682f3381bd310b197_Out_1, _Property_de6b69e233314cd9a267fc2ae1607aeb_Out_0, _Divide_dd779c82ec8d48839fbbef931770d546_Out_2);


					float2 _UV_3e3ab6cc86464e77a4fb4b1332452135_Out_0 = IN.uv;


					Bindings_UVDirection_9781a1b10e5f3d04089f2ceacd0a0f8d _UVDirection_3e268f4ad4734b51b712ebd2ec063fef;
					float2 _UVDirection_3e268f4ad4734b51b712ebd2ec063fef_UV_1;
					SG_UVDirection_9781a1b10e5f3d04089f2ceacd0a0f8d((_UV_3e3ab6cc86464e77a4fb4b1332452135_Out_0.xy), 1, 0, _UVDirection_3e268f4ad4734b51b712ebd2ec063fef, _UVDirection_3e268f4ad4734b51b712ebd2ec063fef_UV_1);


					float _Split_ac145725452b4636813d41964cdd3b5d_R_1 = _UVDirection_3e268f4ad4734b51b712ebd2ec063fef_UV_1[0];
					float _Split_ac145725452b4636813d41964cdd3b5d_G_2 = _UVDirection_3e268f4ad4734b51b712ebd2ec063fef_UV_1[1];
					float _Split_ac145725452b4636813d41964cdd3b5d_B_3 = 0;
					float _Split_ac145725452b4636813d41964cdd3b5d_A_4 = 0;


					float _Step_9038bda212e04e96aa02fe4bbba7059b_Out_2;
					Unity_Step_float(_Divide_dd779c82ec8d48839fbbef931770d546_Out_2, _Split_ac145725452b4636813d41964cdd3b5d_R_1, _Step_9038bda212e04e96aa02fe4bbba7059b_Out_2);


					float _Add_427569befd50472d89cfc7ecd0d35b0e_Out_2;
					Unity_Add_float(_Floor_caae104f9efd4e7682f3381bd310b197_Out_1, 1, _Add_427569befd50472d89cfc7ecd0d35b0e_Out_2);


					float _Divide_3e65bbec0a884db1957827984a3c695a_Out_2;
					Unity_Divide_float(_Add_427569befd50472d89cfc7ecd0d35b0e_Out_2, _Property_de6b69e233314cd9a267fc2ae1607aeb_Out_0, _Divide_3e65bbec0a884db1957827984a3c695a_Out_2);


					float _Step_8210ae01843d43c9bfc4f910354b931b_Out_2;
					Unity_Step_float(_Divide_3e65bbec0a884db1957827984a3c695a_Out_2, _Split_ac145725452b4636813d41964cdd3b5d_R_1, _Step_8210ae01843d43c9bfc4f910354b931b_Out_2);


					float _Subtract_a4a2be648ba949378bf5e0ebf5d6d228_Out_2;
					Unity_Subtract_float(_Step_9038bda212e04e96aa02fe4bbba7059b_Out_2, _Step_8210ae01843d43c9bfc4f910354b931b_Out_2, _Subtract_a4a2be648ba949378bf5e0ebf5d6d228_Out_2);


					float2 _UV_447ca8b2b6cd4529a6135e6e1594b51b_Out_0 = IN.uv;


					Bindings_UVDirection_9781a1b10e5f3d04089f2ceacd0a0f8d _UVDirection_6b6a5eb7643b43cf80ebce22de71a091;
					float2 _UVDirection_6b6a5eb7643b43cf80ebce22de71a091_UV_1;
					SG_UVDirection_9781a1b10e5f3d04089f2ceacd0a0f8d((_UV_447ca8b2b6cd4529a6135e6e1594b51b_Out_0.xy), 0, 0, _UVDirection_6b6a5eb7643b43cf80ebce22de71a091, _UVDirection_6b6a5eb7643b43cf80ebce22de71a091_UV_1);


					float _Split_d7fa0184dc4c4502b92b60c39127f289_R_1 = _UVDirection_6b6a5eb7643b43cf80ebce22de71a091_UV_1[0];
					float _Split_d7fa0184dc4c4502b92b60c39127f289_G_2 = _UVDirection_6b6a5eb7643b43cf80ebce22de71a091_UV_1[1];
					float _Split_d7fa0184dc4c4502b92b60c39127f289_B_3 = 0;
					float _Split_d7fa0184dc4c4502b92b60c39127f289_A_4 = 0;


					float _Step_b4d820c65d644e528f39b8db765a0077_Out_2;
					Unity_Step_float(_Divide_dd779c82ec8d48839fbbef931770d546_Out_2, _Split_d7fa0184dc4c4502b92b60c39127f289_R_1, _Step_b4d820c65d644e528f39b8db765a0077_Out_2);


					float _Step_cfd8e91b21934f2eaf7f95f2000a852a_Out_2;
					Unity_Step_float(_Divide_3e65bbec0a884db1957827984a3c695a_Out_2, _Split_d7fa0184dc4c4502b92b60c39127f289_R_1, _Step_cfd8e91b21934f2eaf7f95f2000a852a_Out_2);


					float _Subtract_b5f3d83c5559420fab78d2a1067281aa_Out_2;
					Unity_Subtract_float(_Step_b4d820c65d644e528f39b8db765a0077_Out_2, _Step_cfd8e91b21934f2eaf7f95f2000a852a_Out_2, _Subtract_b5f3d83c5559420fab78d2a1067281aa_Out_2);


					float _Minimum_c8cfcfab80874ff98e1d4aedd03b69b7_Out_2;
					Unity_Minimum_float(_Subtract_a4a2be648ba949378bf5e0ebf5d6d228_Out_2, _Subtract_b5f3d83c5559420fab78d2a1067281aa_Out_2, _Minimum_c8cfcfab80874ff98e1d4aedd03b69b7_Out_2);


					float _Subtract_7a127c6f63704dad858f84a31a31cb58_Out_2;
					Unity_Subtract_float(_Subtract_a4a2be648ba949378bf5e0ebf5d6d228_Out_2, _Minimum_c8cfcfab80874ff98e1d4aedd03b69b7_Out_2, _Subtract_7a127c6f63704dad858f84a31a31cb58_Out_2);


					float _Multiply_852b6c47524c448c9d1c515c38869f63_Out_2;
					Unity_Multiply_float(_Negate_2b188f8faaab4badb2772dbf9332765a_Out_1, _Subtract_7a127c6f63704dad858f84a31a31cb58_Out_2, _Multiply_852b6c47524c448c9d1c515c38869f63_Out_2);


					float _Subtract_19b5ee858588495fb00aa2d8a41e41d7_Out_2;
					Unity_Subtract_float(_Subtract_b5f3d83c5559420fab78d2a1067281aa_Out_2, _Minimum_c8cfcfab80874ff98e1d4aedd03b69b7_Out_2, _Subtract_19b5ee858588495fb00aa2d8a41e41d7_Out_2);


					float _Multiply_9d2789cec9bb4a2589ff2516a3518252_Out_2;
					Unity_Multiply_float(_Multiply_796ea4bb762345339888a2bdeecf17da_Out_2, _Subtract_19b5ee858588495fb00aa2d8a41e41d7_Out_2, _Multiply_9d2789cec9bb4a2589ff2516a3518252_Out_2);


					float _Add_5198434f086646c29308171b0df6685a_Out_2;
					Unity_Add_float(_Multiply_852b6c47524c448c9d1c515c38869f63_Out_2, _Multiply_9d2789cec9bb4a2589ff2516a3518252_Out_2, _Add_5198434f086646c29308171b0df6685a_Out_2);


					float _Negate_ad097990121d429aaa133e1eea1af8a4_Out_1;
					Unity_Negate_float(_Subtract_22c4e48ff51049f6a6a38c865b4b7a00_Out_2, _Negate_ad097990121d429aaa133e1eea1af8a4_Out_1);


					float _Multiply_1e15f119869742798b91924b53d2faaa_Out_2;
					Unity_Multiply_float(_Negate_ad097990121d429aaa133e1eea1af8a4_Out_1, _Step_8210ae01843d43c9bfc4f910354b931b_Out_2, _Multiply_1e15f119869742798b91924b53d2faaa_Out_2);


					float _Multiply_827bcc22be684cb6b4f8cae6c7cfd8c7_Out_2;
					Unity_Multiply_float(_Subtract_22c4e48ff51049f6a6a38c865b4b7a00_Out_2, _Step_cfd8e91b21934f2eaf7f95f2000a852a_Out_2, _Multiply_827bcc22be684cb6b4f8cae6c7cfd8c7_Out_2);


					float _Add_5ef6b61ee4574ba1b954407c20f693c6_Out_2;
					Unity_Add_float(_Multiply_1e15f119869742798b91924b53d2faaa_Out_2, _Multiply_827bcc22be684cb6b4f8cae6c7cfd8c7_Out_2, _Add_5ef6b61ee4574ba1b954407c20f693c6_Out_2);


					float _Add_52395ed7081540b6a5eeb30b6c146349_Out_2;
					Unity_Add_float(_Add_5198434f086646c29308171b0df6685a_Out_2, _Add_5ef6b61ee4574ba1b954407c20f693c6_Out_2, _Add_52395ed7081540b6a5eeb30b6c146349_Out_2);


					float2 _Vector2_9800073b12844bb38f97181667168c78_Out_0 = float2(_Add_52395ed7081540b6a5eeb30b6c146349_Out_2, 0);


					float _Property_20137de2d2d841e299cb0dd9d509ac51_Out_0 = _Value;


					float _Property_6251cd51aaed47da8f57f831270884c7_Out_0 = _SegmentCount;


					float _Minimum_485fa412ebe84b929d8963159ab700ff_Out_2;
					Unity_Minimum_float(_Property_20137de2d2d841e299cb0dd9d509ac51_Out_0, _Property_6251cd51aaed47da8f57f831270884c7_Out_0, _Minimum_485fa412ebe84b929d8963159ab700ff_Out_2);


					float _Floor_d5684524a50143eb90fadc8517f1c0cc_Out_1;
					Unity_Floor_float(_Minimum_485fa412ebe84b929d8963159ab700ff_Out_2, _Floor_d5684524a50143eb90fadc8517f1c0cc_Out_1);


					float _Property_90a312372aaf4874bdb75fbd111adac6_Out_0 = _SegmentCount;


					float _Divide_e35eef179f82430395b9b3df1cf38d94_Out_2;
					Unity_Divide_float(_Floor_d5684524a50143eb90fadc8517f1c0cc_Out_1, _Property_90a312372aaf4874bdb75fbd111adac6_Out_0, _Divide_e35eef179f82430395b9b3df1cf38d94_Out_2);


					float2 _UV_19f734e833b24e52b9362b85737c9169_Out_0 = IN.uv;


					float _Split_f552341cf6964621a8ad3bcd3ba7f34b_R_1 = _UV_19f734e833b24e52b9362b85737c9169_Out_0[0];
					float _Split_f552341cf6964621a8ad3bcd3ba7f34b_G_2 = _UV_19f734e833b24e52b9362b85737c9169_Out_0[1];


					float _Step_00a66c56528c48b480c88fb517feed6f_Out_2;
					Unity_Step_float(_Divide_e35eef179f82430395b9b3df1cf38d94_Out_2, _Split_f552341cf6964621a8ad3bcd3ba7f34b_R_1, _Step_00a66c56528c48b480c88fb517feed6f_Out_2);


					float _Add_eb97180f2ff24614ba057fe3bdb221be_Out_2;
					Unity_Add_float(_Floor_d5684524a50143eb90fadc8517f1c0cc_Out_1, 1, _Add_eb97180f2ff24614ba057fe3bdb221be_Out_2);


					float _Divide_991e0ffa1fa24d3e804b0c79b80eb6bd_Out_2;
					Unity_Divide_float(_Add_eb97180f2ff24614ba057fe3bdb221be_Out_2, _Property_90a312372aaf4874bdb75fbd111adac6_Out_0, _Divide_991e0ffa1fa24d3e804b0c79b80eb6bd_Out_2);


					float _Step_bd10b59b078641ebbb9d0b76ff442514_Out_2;
					Unity_Step_float(_Divide_991e0ffa1fa24d3e804b0c79b80eb6bd_Out_2, _Split_f552341cf6964621a8ad3bcd3ba7f34b_R_1, _Step_bd10b59b078641ebbb9d0b76ff442514_Out_2);


					float _Subtract_7758be2510074842ae2b22eb48b9ff68_Out_2;
					Unity_Subtract_float(_Step_00a66c56528c48b480c88fb517feed6f_Out_2, _Step_bd10b59b078641ebbb9d0b76ff442514_Out_2, _Subtract_7758be2510074842ae2b22eb48b9ff68_Out_2);


					float _Divide_c17708aa831a44c48b795f40aedefba0_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_90a312372aaf4874bdb75fbd111adac6_Out_0, _Divide_c17708aa831a44c48b795f40aedefba0_Out_2);


					float _Modulo_08eeb8e9ddd34600ba370932dffd4209_Out_2;
					Unity_Modulo_float(_Minimum_485fa412ebe84b929d8963159ab700ff_Out_2, 1, _Modulo_08eeb8e9ddd34600ba370932dffd4209_Out_2);


					float _Property_931658c7bf664ffba6b70c72d2c3c858_Out_0 = _BorderWidth;


					float _Property_b410d857a98f4146920cfd514978f452_Out_0 = _SegmentCount;


					float _Multiply_3508fa87e9f24f1a814b82a80fc505e0_Out_2;
					Unity_Multiply_float(_Property_931658c7bf664ffba6b70c72d2c3c858_Out_0, _Property_b410d857a98f4146920cfd514978f452_Out_0, _Multiply_3508fa87e9f24f1a814b82a80fc505e0_Out_2);


					float _Multiply_903b8d563e4b4db0811c4a507e64f0ce_Out_2;
					Unity_Multiply_float(_Multiply_3508fa87e9f24f1a814b82a80fc505e0_Out_2, 2, _Multiply_903b8d563e4b4db0811c4a507e64f0ce_Out_2);


					float _Divide_843ac270560e47898911b2ad4914663f_Out_2;
					Unity_Divide_float(_Multiply_903b8d563e4b4db0811c4a507e64f0ce_Out_2, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Divide_843ac270560e47898911b2ad4914663f_Out_2);


					float _Property_1f76120cd30d43eabdb1d9f27bce6184_Out_0 = _SegmentSpacing;


					float _Add_df38d742ed5b4073a3a6a9afc796e51c_Out_2;
					Unity_Add_float(_Divide_843ac270560e47898911b2ad4914663f_Out_2, _Property_1f76120cd30d43eabdb1d9f27bce6184_Out_0, _Add_df38d742ed5b4073a3a6a9afc796e51c_Out_2);


					float2 _Vector2_d2ea5a5f84c949b381313d2c5d3cb958_Out_0 = float2(_Add_df38d742ed5b4073a3a6a9afc796e51c_Out_2, 1);


					float _Remap_b11457471a8e4db6a92ee3d6370dfd2e_Out_3;
					Unity_Remap_float(_Modulo_08eeb8e9ddd34600ba370932dffd4209_Out_2, float2 (0, 1), _Vector2_d2ea5a5f84c949b381313d2c5d3cb958_Out_0, _Remap_b11457471a8e4db6a92ee3d6370dfd2e_Out_3);


					float _Multiply_3a09c3621e0a4a78a2617753da165d95_Out_2;
					Unity_Multiply_float(_Remap_b11457471a8e4db6a92ee3d6370dfd2e_Out_3, _Divide_c17708aa831a44c48b795f40aedefba0_Out_2, _Multiply_3a09c3621e0a4a78a2617753da165d95_Out_2);


					float _Subtract_12a665a3317d4d13b92b0e91e9f813b1_Out_2;
					Unity_Subtract_float(_Divide_c17708aa831a44c48b795f40aedefba0_Out_2, _Multiply_3a09c3621e0a4a78a2617753da165d95_Out_2, _Subtract_12a665a3317d4d13b92b0e91e9f813b1_Out_2);


					float _Multiply_977a43792d524b5a82ccbfdcc8aeab98_Out_2;
					Unity_Multiply_float(_Subtract_7758be2510074842ae2b22eb48b9ff68_Out_2, _Subtract_12a665a3317d4d13b92b0e91e9f813b1_Out_2, _Multiply_977a43792d524b5a82ccbfdcc8aeab98_Out_2);


					float _Multiply_a4dd3aaf8c964e63b8df09a53fb75daf_Out_2;
					Unity_Multiply_float(_Add_df38d742ed5b4073a3a6a9afc796e51c_Out_2, _Divide_c17708aa831a44c48b795f40aedefba0_Out_2, _Multiply_a4dd3aaf8c964e63b8df09a53fb75daf_Out_2);


					float _Subtract_cbd6c629048c4fa8b4f5e4daabe0b2cc_Out_2;
					Unity_Subtract_float(_Divide_c17708aa831a44c48b795f40aedefba0_Out_2, _Multiply_a4dd3aaf8c964e63b8df09a53fb75daf_Out_2, _Subtract_cbd6c629048c4fa8b4f5e4daabe0b2cc_Out_2);


					float _Multiply_6ca861716d744e66bb0f85d8fe8d18b8_Out_2;
					Unity_Multiply_float(_Step_bd10b59b078641ebbb9d0b76ff442514_Out_2, _Subtract_cbd6c629048c4fa8b4f5e4daabe0b2cc_Out_2, _Multiply_6ca861716d744e66bb0f85d8fe8d18b8_Out_2);


					float _Maximum_7c8da6b660744e3698b5e7da81daf86f_Out_2;
					Unity_Maximum_float(_Multiply_977a43792d524b5a82ccbfdcc8aeab98_Out_2, _Multiply_6ca861716d744e66bb0f85d8fe8d18b8_Out_2, _Maximum_7c8da6b660744e3698b5e7da81daf86f_Out_2);


					float2 _Vector2_dc29c2a55308422daa47c0941da7612b_Out_0 = float2(_Maximum_7c8da6b660744e3698b5e7da81daf86f_Out_2, 0);


					float2 _Branch_30f274082e9346819e006ab3827dd794_Out_3;
					Unity_Branch_float2(_And_9557254d5bb748fe8f237334ad8f69d2_Out_2, _Vector2_9800073b12844bb38f97181667168c78_Out_0, _Vector2_dc29c2a55308422daa47c0941da7612b_Out_0, _Branch_30f274082e9346819e006ab3827dd794_Out_3);


					#if defined(SHAPE_LINEAR)
					float _Shape_0c76ad193e304a35913ef4dcce123bcf_Out_0 = 0;
					#else
					float _Shape_0c76ad193e304a35913ef4dcce123bcf_Out_0 = 1;
#endif


					float _Property_a4845ac86ad14e4592bf94171468b5e7_Out_0 = _Pixelate;


					float _Property_e74e49da39334c3ea96698d97393e93b_Out_0 = _PixelCount;


					Bindings_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe _Pixelation_d0aeaaecc65e4a58858f2753ad70c531;
					_Pixelation_d0aeaaecc65e4a58858f2753ad70c531.uv = IN.uv;
					float2 _Pixelation_d0aeaaecc65e4a58858f2753ad70c531_OutVector2_1;
					SG_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe(_Property_a4845ac86ad14e4592bf94171468b5e7_Out_0, _Property_e74e49da39334c3ea96698d97393e93b_Out_0, _Pixelation_d0aeaaecc65e4a58858f2753ad70c531, _Pixelation_d0aeaaecc65e4a58858f2753ad70c531_OutVector2_1);


					Bindings_ScaleAdjustedUV_827f1038dd5dd934a8c15acd213771a9 _ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f;
					_ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f.uv = IN.uv;
					float2 _ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f_UV_1;
					float2 _ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f_Scalel_2;
					SG_ScaleAdjustedUV_827f1038dd5dd934a8c15acd213771a9(use_custom_scale, circle_or_ui_scaling.xyy, 0, _Pixelation_d0aeaaecc65e4a58858f2753ad70c531_OutVector2_1, 0, 0, _ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f, _ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f_UV_1, _ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f_Scalel_2);


					float _Property_787b738088884c7db9a4f7211b01f21d_Out_0 = _SegmentCount;


					float _Divide_88238d459d9942b59c908411ccc60b95_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_787b738088884c7db9a4f7211b01f21d_Out_0, _Divide_88238d459d9942b59c908411ccc60b95_Out_2);


					float2 _Vector2_050cbed3fa784af7bc78a9a53bfdb274_Out_0 = float2(_Divide_88238d459d9942b59c908411ccc60b95_Out_2, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6);


					Bindings_TileUV_f6e3cfbe2653c6241b6827122eeef41c _TileUV_57633d2cf0b64760928de7a689d853f8;
					_TileUV_57633d2cf0b64760928de7a689d853f8.uv = IN.uv;
					float2 _TileUV_57633d2cf0b64760928de7a689d853f8_UV_1;
					SG_TileUV_f6e3cfbe2653c6241b6827122eeef41c(0, _ScaleAdjustedUV_ae2fd441bd574df695d6c663382e2f1f_UV_1, 1, 1, _Vector2_050cbed3fa784af7bc78a9a53bfdb274_Out_0, _TileUV_57633d2cf0b64760928de7a689d853f8, _TileUV_57633d2cf0b64760928de7a689d853f8_UV_1);


					float2 _Add_0d56613971004a71a9e62c9683fa391b_Out_2;
					Unity_Add_float2(_Branch_30f274082e9346819e006ab3827dd794_Out_3, _TileUV_57633d2cf0b64760928de7a689d853f8_UV_1, _Add_0d56613971004a71a9e62c9683fa391b_Out_2);


					float2 _Property_aa6763f5668b48e2b2844ce5bae652bd_Out_0 = _ValueMaskOffset;


					float2 _Add_0494744de27d46f1aedb7bb7708c365d_Out_2;
					Unity_Add_float2(_Add_0d56613971004a71a9e62c9683fa391b_Out_2, _Property_aa6763f5668b48e2b2844ce5bae652bd_Out_0, _Add_0494744de27d46f1aedb7bb7708c365d_Out_2);


					sampler2D _Property_be1215b36b0946e5aab29f68919bb494_Out_0 = _VariableWidthCurve;


					float4 _SampleTexture2D_d69305a2b319409ba065572874a25980_RGBA_0 = tex2D(_Property_be1215b36b0946e5aab29f68919bb494_Out_0, IN.uv);
					float _SampleTexture2D_d69305a2b319409ba065572874a25980_R_4 = _SampleTexture2D_d69305a2b319409ba065572874a25980_RGBA_0.r;
					float _SampleTexture2D_d69305a2b319409ba065572874a25980_G_5 = _SampleTexture2D_d69305a2b319409ba065572874a25980_RGBA_0.g;
					float _SampleTexture2D_d69305a2b319409ba065572874a25980_B_6 = _SampleTexture2D_d69305a2b319409ba065572874a25980_RGBA_0.b;
					float _SampleTexture2D_d69305a2b319409ba065572874a25980_A_7 = _SampleTexture2D_d69305a2b319409ba065572874a25980_RGBA_0.a;


					float _Property_867df5ffc1624ea1accb7ef3a2e6a927_Out_0 = _BorderRadius;


					float _Multiply_684afa80d5d54929a32ba4b6df0a6512_Out_2;
					Unity_Multiply_float(_SampleTexture2D_d69305a2b319409ba065572874a25980_R_4, _Property_867df5ffc1624ea1accb7ef3a2e6a927_Out_0, _Multiply_684afa80d5d54929a32ba4b6df0a6512_Out_2);


					float _Property_c45a73c5931c4851988acfc1609b0cc0_Out_0 = _InnerRoundingPercent;


					float _Multiply_f38cdfc67f6f4804ae8a21efb6b347db_Out_2;
					Unity_Multiply_float(_Multiply_684afa80d5d54929a32ba4b6df0a6512_Out_2, _Property_c45a73c5931c4851988acfc1609b0cc0_Out_0, _Multiply_f38cdfc67f6f4804ae8a21efb6b347db_Out_2);


					float _Property_80411ebbdc714b0d91ed6aaf4fe207d1_Out_0 = _Radius;


					float _Property_fdc105b41705458b9e202b1048fc93e1_Out_0 = _Width;


					float _Property_5a1ec7306bb24c3a989a3d9d82f1be2a_Out_0 = _Arc;


					Bindings_CircleSize_c061357d2877b5046b04d83f9968414a _CircleSize_bf888f46f91a4a7cb51091cfbff1d7dc;
					_CircleSize_bf888f46f91a4a7cb51091cfbff1d7dc.uv = IN.uv;
					float _CircleSize_bf888f46f91a4a7cb51091cfbff1d7dc_Length_1;
					SG_CircleSize_c061357d2877b5046b04d83f9968414a(_Property_80411ebbdc714b0d91ed6aaf4fe207d1_Out_0, _Property_fdc105b41705458b9e202b1048fc93e1_Out_0, _Property_5a1ec7306bb24c3a989a3d9d82f1be2a_Out_0, 1, _CircleSize_bf888f46f91a4a7cb51091cfbff1d7dc, _CircleSize_bf888f46f91a4a7cb51091cfbff1d7dc_Length_1);


					float _Divide_cebdfbf3e2634b659ee7b5a17065384c_Out_2;
					Unity_Divide_float(_CircleSize_bf888f46f91a4a7cb51091cfbff1d7dc_Length_1, _Property_80411ebbdc714b0d91ed6aaf4fe207d1_Out_0, _Divide_cebdfbf3e2634b659ee7b5a17065384c_Out_2);


					float _Multiply_e9bc3e7c36134bc9890622bf874e86cd_Out_2;
					Unity_Multiply_float(_Divide_cebdfbf3e2634b659ee7b5a17065384c_Out_2, _Multiply_f38cdfc67f6f4804ae8a21efb6b347db_Out_2, _Multiply_e9bc3e7c36134bc9890622bf874e86cd_Out_2);


					#if defined(SHAPE_LINEAR)
					float _Shape_24d567a81d8443e3a0e87950116bdb69_Out_0 = _Multiply_f38cdfc67f6f4804ae8a21efb6b347db_Out_2;
					#else
					float _Shape_24d567a81d8443e3a0e87950116bdb69_Out_0 = _Multiply_e9bc3e7c36134bc9890622bf874e86cd_Out_2;
#endif


					float4 _Property_1e76314488964de1b129da3ea2550031_Out_0 = _BorderRadiusOffset;


					float4 _Multiply_c2610731e37e40588223d17552529df5_Out_2;
					Unity_Multiply_float((_SampleTexture2D_d69305a2b319409ba065572874a25980_R_4.xxxx), _Property_1e76314488964de1b129da3ea2550031_Out_0, _Multiply_c2610731e37e40588223d17552529df5_Out_2);


					float4 _Multiply_0a276f519c354b2692c771f556e1b996_Out_2;
					Unity_Multiply_float(_Multiply_c2610731e37e40588223d17552529df5_Out_2, (_Property_c45a73c5931c4851988acfc1609b0cc0_Out_0.xxxx), _Multiply_0a276f519c354b2692c771f556e1b996_Out_2);


					float4 _Multiply_0868938c8727458ba8553be3d6f1c579_Out_2;
					Unity_Multiply_float((_Divide_cebdfbf3e2634b659ee7b5a17065384c_Out_2.xxxx), _Multiply_0a276f519c354b2692c771f556e1b996_Out_2, _Multiply_0868938c8727458ba8553be3d6f1c579_Out_2);


					#if defined(SHAPE_LINEAR)
					float4 _Shape_36bd47183d5646ca9807ec1741e2c78f_Out_0 = _Multiply_0a276f519c354b2692c771f556e1b996_Out_2;
					#else
					float4 _Shape_36bd47183d5646ca9807ec1741e2c78f_Out_0 = _Multiply_0868938c8727458ba8553be3d6f1c579_Out_2;
#endif


					float _Multiply_33c8fdb7918748f98d6c9dd85f4500a4_Out_2;
					Unity_Multiply_float(_SampleTexture2D_d69305a2b319409ba065572874a25980_R_4, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, _Multiply_33c8fdb7918748f98d6c9dd85f4500a4_Out_2);


					float2 _Vector2_9387851e7f1e49b8819dbc2522abe0d5_Out_0 = float2(_Divide_88238d459d9942b59c908411ccc60b95_Out_2, _Multiply_33c8fdb7918748f98d6c9dd85f4500a4_Out_2);


					float _Property_a5343031739643e894fdd2c40dbf7b55_Out_0 = _SegmentSpacing;


					float _Divide_296c99cc865343e584edf7efde0a6c6d_Out_2;
					Unity_Divide_float(_Property_a5343031739643e894fdd2c40dbf7b55_Out_0, 2, _Divide_296c99cc865343e584edf7efde0a6c6d_Out_2);


					float _Subtract_1330e526f13c4521aac9f4284d59daac_Out_2;
					Unity_Subtract_float(0.5, _Divide_296c99cc865343e584edf7efde0a6c6d_Out_2, _Subtract_1330e526f13c4521aac9f4284d59daac_Out_2);


					float2 _Vector2_a81ba89491be41a89beb82e1380c8103_Out_0 = float2(_Subtract_1330e526f13c4521aac9f4284d59daac_Out_2, 0.5);


					float2 _Multiply_cb284d28c1c541db8a36b8362510467d_Out_2;
					Unity_Multiply_float(_Vector2_9387851e7f1e49b8819dbc2522abe0d5_Out_0, _Vector2_a81ba89491be41a89beb82e1380c8103_Out_0, _Multiply_cb284d28c1c541db8a36b8362510467d_Out_2);


					float _Property_02e44d193f5c40cdb76c70c645f447ef_Out_0 = _SegmentCount;


					float _Multiply_c36d34ee9af049738c5aacc258ea77f2_Out_2;
					Unity_Multiply_float(_Property_02e44d193f5c40cdb76c70c645f447ef_Out_0, 2, _Multiply_c36d34ee9af049738c5aacc258ea77f2_Out_2);


					float _Divide_61178ed8698c4785954a6d7fb76af794_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Multiply_c36d34ee9af049738c5aacc258ea77f2_Out_2, _Divide_61178ed8698c4785954a6d7fb76af794_Out_2);


					float _Property_4abb9aae6fff4ff09f9e2b1c0dd3ed83_Out_0 = _BorderWidth;


					float _Subtract_1bb9d2623fc149fe9049d4671300dd61_Out_2;
					Unity_Subtract_float(_Divide_61178ed8698c4785954a6d7fb76af794_Out_2, _Property_4abb9aae6fff4ff09f9e2b1c0dd3ed83_Out_0, _Subtract_1bb9d2623fc149fe9049d4671300dd61_Out_2);


					float _Property_0355b90d057c44299c2811ad0a6bfdb3_Out_0 = _SegmentSpacing;


					float _Multiply_31254af9cd224c30a68ec6b07dc5f4b2_Out_2;
					Unity_Multiply_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_0355b90d057c44299c2811ad0a6bfdb3_Out_0, _Multiply_31254af9cd224c30a68ec6b07dc5f4b2_Out_2);


					float _Divide_557056c4b1cd4cb4a8f8f3844fae2a06_Out_2;
					Unity_Divide_float(_Multiply_31254af9cd224c30a68ec6b07dc5f4b2_Out_2, _Multiply_c36d34ee9af049738c5aacc258ea77f2_Out_2, _Divide_557056c4b1cd4cb4a8f8f3844fae2a06_Out_2);


					float _Subtract_cbf8ae2c00424c9ea1b29bc10e24a766_Out_2;
					Unity_Subtract_float(_Subtract_1bb9d2623fc149fe9049d4671300dd61_Out_2, _Divide_557056c4b1cd4cb4a8f8f3844fae2a06_Out_2, _Subtract_cbf8ae2c00424c9ea1b29bc10e24a766_Out_2);


					float _OneMinus_a3b77d0960074c7e8b9f7bb94ebaa60c_Out_1;
					Unity_OneMinus_float(_Maximum_570d73cf613b485cbf071cf683d8f72d_Out_2, _OneMinus_a3b77d0960074c7e8b9f7bb94ebaa60c_Out_1);


					float _Multiply_a71991db83774d6387881097487544ab_Out_2;
					Unity_Multiply_float(_Subtract_cbf8ae2c00424c9ea1b29bc10e24a766_Out_2, _OneMinus_a3b77d0960074c7e8b9f7bb94ebaa60c_Out_1, _Multiply_a71991db83774d6387881097487544ab_Out_2);


					float _Multiply_a5f7b269b8514eb7820ad052def2ba4a_Out_2;
					Unity_Multiply_float(_Minimum_c8cfcfab80874ff98e1d4aedd03b69b7_Out_2, _Multiply_a71991db83774d6387881097487544ab_Out_2, _Multiply_a5f7b269b8514eb7820ad052def2ba4a_Out_2);


					float2 _Vector2_8778d34c31fe49059c18656e2e049c0e_Out_0 = float2(_Multiply_a5f7b269b8514eb7820ad052def2ba4a_Out_2, 0);


					float2 _Branch_6acb547ddae14114a756e7797ca41fbc_Out_3;
					Unity_Branch_float2(_And_9557254d5bb748fe8f237334ad8f69d2_Out_2, _Vector2_8778d34c31fe49059c18656e2e049c0e_Out_0, float2(0, 0), _Branch_6acb547ddae14114a756e7797ca41fbc_Out_3);


					float2 _Subtract_a6e3b79af14f47f1acf86080dae3194f_Out_2;
					Unity_Subtract_float2(_Multiply_cb284d28c1c541db8a36b8362510467d_Out_2, _Branch_6acb547ddae14114a756e7797ca41fbc_Out_3, _Subtract_a6e3b79af14f47f1acf86080dae3194f_Out_2);


					Bindings_RectangleSDF_d6d1ac88d8e9cf8409879cf775331adb _RectangleSDF_7bff118c3dce4d3687711e792c8ca955;
					_RectangleSDF_7bff118c3dce4d3687711e792c8ca955.uv = IN.uv;
					float _RectangleSDF_7bff118c3dce4d3687711e792c8ca955_SDF_1;
					SG_RectangleSDF_d6d1ac88d8e9cf8409879cf775331adb(0, _Add_0494744de27d46f1aedb7bb7708c365d_Out_2, _Shape_24d567a81d8443e3a0e87950116bdb69_Out_0, _Shape_36bd47183d5646ca9807ec1741e2c78f_Out_0, _Subtract_a6e3b79af14f47f1acf86080dae3194f_Out_2, _RectangleSDF_7bff118c3dce4d3687711e792c8ca955, _RectangleSDF_7bff118c3dce4d3687711e792c8ca955_SDF_1);


					float _Property_ccf842a248b04bc5a4c37667382d6120_Out_0 = _BorderWidth;


					float _Add_7c05399159814839b941e7bb86e5d982_Out_2;
					Unity_Add_float(_RectangleSDF_7bff118c3dce4d3687711e792c8ca955_SDF_1, _Property_ccf842a248b04bc5a4c37667382d6120_Out_0, _Add_7c05399159814839b941e7bb86e5d982_Out_2);


					float _Property_426656fb7003499cba25e77cb9610556_Out_0 = _Pixelate;


					float _Property_9bca8f5db435480da34b93a91a1f9da9_Out_0 = _PixelCount;


					Bindings_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe _Pixelation_30f57b50993f427d997861996a661be2;
					_Pixelation_30f57b50993f427d997861996a661be2.uv = IN.uv;
					float2 _Pixelation_30f57b50993f427d997861996a661be2_OutVector2_1;
					SG_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe(_Property_426656fb7003499cba25e77cb9610556_Out_0, _Property_9bca8f5db435480da34b93a91a1f9da9_Out_0, _Pixelation_30f57b50993f427d997861996a661be2, _Pixelation_30f57b50993f427d997861996a661be2_OutVector2_1);


					float2 _Vector2_8e5058acabe04d0da1df4a0ed89aae2e_Out_0 = float2(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6);


					float _Divide_4a7a977e80ae46149442d2f9994524c9_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, 2, _Divide_4a7a977e80ae46149442d2f9994524c9_Out_2);


					float _Negate_af373f61a98d4cb6bf6bc39dd68de8c2_Out_1;
					Unity_Negate_float(_Divide_4a7a977e80ae46149442d2f9994524c9_Out_2, _Negate_af373f61a98d4cb6bf6bc39dd68de8c2_Out_1);


					float2 _Vector2_b6aae780501340e79f27797797e769f8_Out_0 = float2(0, _Negate_af373f61a98d4cb6bf6bc39dd68de8c2_Out_1);


					float2 _TilingAndOffset_7f12912337844ec88c02bb1b3134683b_Out_3;
					Unity_TilingAndOffset_float(_Pixelation_30f57b50993f427d997861996a661be2_OutVector2_1, _Vector2_8e5058acabe04d0da1df4a0ed89aae2e_Out_0, _Vector2_b6aae780501340e79f27797797e769f8_Out_0, _TilingAndOffset_7f12912337844ec88c02bb1b3134683b_Out_3);


					float _Split_a7466a4bb89f43bdbd5d1a2d7903b141_R_1 = _TilingAndOffset_7f12912337844ec88c02bb1b3134683b_Out_3[0];
					float _Split_a7466a4bb89f43bdbd5d1a2d7903b141_G_2 = _TilingAndOffset_7f12912337844ec88c02bb1b3134683b_Out_3[1];
					float _Split_a7466a4bb89f43bdbd5d1a2d7903b141_B_3 = 0;
					float _Split_a7466a4bb89f43bdbd5d1a2d7903b141_A_4 = 0;


					float _Property_f50d551c75a746f6a93bbe6e10ef8e73_Out_0 = _SegmentCount;


					float _Divide_53cecbf69ac64c2685cec0ae972c62ff_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_f50d551c75a746f6a93bbe6e10ef8e73_Out_0, _Divide_53cecbf69ac64c2685cec0ae972c62ff_Out_2);


					float _Modulo_e1396df32b1d41dbb830e65e9f30fff6_Out_2;
					Unity_Modulo_float(_Split_a7466a4bb89f43bdbd5d1a2d7903b141_R_1, _Divide_53cecbf69ac64c2685cec0ae972c62ff_Out_2, _Modulo_e1396df32b1d41dbb830e65e9f30fff6_Out_2);


					float _Divide_720aabd1b61b4ec299e4656497638ece_Out_2;
					Unity_Divide_float(_Divide_53cecbf69ac64c2685cec0ae972c62ff_Out_2, 2, _Divide_720aabd1b61b4ec299e4656497638ece_Out_2);


					float _Subtract_2f015a5b654b43c3b3ecd38a8bfd43ee_Out_2;
					Unity_Subtract_float(_Modulo_e1396df32b1d41dbb830e65e9f30fff6_Out_2, _Divide_720aabd1b61b4ec299e4656497638ece_Out_2, _Subtract_2f015a5b654b43c3b3ecd38a8bfd43ee_Out_2);


					float2 _Vector2_9a54378b58de42798f56960b5dce703c_Out_0 = float2(_Subtract_2f015a5b654b43c3b3ecd38a8bfd43ee_Out_2, _Split_a7466a4bb89f43bdbd5d1a2d7903b141_G_2);


					float _Split_4e0e2d3760fd4da5987089c27c33dedb_R_1 = _Vector2_9a54378b58de42798f56960b5dce703c_Out_0[0];
					float _Split_4e0e2d3760fd4da5987089c27c33dedb_G_2 = _Vector2_9a54378b58de42798f56960b5dce703c_Out_0[1];
					float _Split_4e0e2d3760fd4da5987089c27c33dedb_B_3 = 0;
					float _Split_4e0e2d3760fd4da5987089c27c33dedb_A_4 = 0;


					float2 _Vector2_9acd07220fdb46ff86d2361fbf72575f_Out_0 = float2(_Split_4e0e2d3760fd4da5987089c27c33dedb_R_1, _Split_4e0e2d3760fd4da5987089c27c33dedb_G_2);


					float2 _Absolute_9302c916d33e41e0ae4c559cae7d9e1d_Out_1;
					Unity_Absolute_float2(_Vector2_9acd07220fdb46ff86d2361fbf72575f_Out_0, _Absolute_9302c916d33e41e0ae4c559cae7d9e1d_Out_1);


					float _Property_4e644dc8f2d94ec1a60b78545e28e2e4_Out_0 = _SegmentCount;


					float _Divide_c92c895776ac4e5893d466e76020ff0a_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_4e644dc8f2d94ec1a60b78545e28e2e4_Out_0, _Divide_c92c895776ac4e5893d466e76020ff0a_Out_2);


					sampler2D _Property_c669d427e70b45a58394310117857c87_Out_0 = _VariableWidthCurve;


					float4 _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_RGBA_0 = tex2D(_Property_c669d427e70b45a58394310117857c87_Out_0, IN.uv);
					float _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_R_4 = _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_RGBA_0.r;
					float _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_G_5 = _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_RGBA_0.g;
					float _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_B_6 = _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_RGBA_0.b;
					float _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_A_7 = _SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_RGBA_0.a;


					float _Multiply_68d5688057d043aba1513bfed90e0839_Out_2;
					Unity_Multiply_float(_SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_R_4, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, _Multiply_68d5688057d043aba1513bfed90e0839_Out_2);


					float2 _Vector2_68cffa43bdc24e3d9fdaf8adf4549618_Out_0 = float2(_Divide_c92c895776ac4e5893d466e76020ff0a_Out_2, _Multiply_68d5688057d043aba1513bfed90e0839_Out_2);


					float _Property_48cbe99bbd5b4b6a8b57b7cb60f756a4_Out_0 = _SegmentSpacing;


					float _Divide_94b7f636496a4045bb4b197af76b4b84_Out_2;
					Unity_Divide_float(_Property_48cbe99bbd5b4b6a8b57b7cb60f756a4_Out_0, 2, _Divide_94b7f636496a4045bb4b197af76b4b84_Out_2);


					float _Subtract_31b2bcb7d7284de997c575bd0795d329_Out_2;
					Unity_Subtract_float(0.5, _Divide_94b7f636496a4045bb4b197af76b4b84_Out_2, _Subtract_31b2bcb7d7284de997c575bd0795d329_Out_2);


					float2 _Vector2_3c67284960914e188907a571a91db691_Out_0 = float2(_Subtract_31b2bcb7d7284de997c575bd0795d329_Out_2, 0.5);


					float2 _Multiply_5f9c7d0a047940df9fd2f49c9177cc75_Out_2;
					Unity_Multiply_float(_Vector2_68cffa43bdc24e3d9fdaf8adf4549618_Out_0, _Vector2_3c67284960914e188907a571a91db691_Out_0, _Multiply_5f9c7d0a047940df9fd2f49c9177cc75_Out_2);


					float2 _Subtract_9f8b9461f80d46f69aebbc311edb9a18_Out_2;
					Unity_Subtract_float2(_Absolute_9302c916d33e41e0ae4c559cae7d9e1d_Out_1, _Multiply_5f9c7d0a047940df9fd2f49c9177cc75_Out_2, _Subtract_9f8b9461f80d46f69aebbc311edb9a18_Out_2);


					float _Comparison_60dd2c70a16c4ea69bc8f8b6adc984a3_Out_2;
					Unity_Comparison_Greater_float(_Split_4e0e2d3760fd4da5987089c27c33dedb_G_2, 0, _Comparison_60dd2c70a16c4ea69bc8f8b6adc984a3_Out_2);


					float _Comparison_19e19d7f35b74089aff0430c87627724_Out_2;
					Unity_Comparison_Greater_float(_Split_4e0e2d3760fd4da5987089c27c33dedb_R_1, 0, _Comparison_19e19d7f35b74089aff0430c87627724_Out_2);


					float _Property_6457488dbffb4310990eaaaa96bbc7c6_Out_0 = _AdjustBorderRadiusToWidthCurve;


					float _Property_f6d590d76a8f48dc9f0349c29ec7cf83_Out_0 = _BorderRadius;


					float4 _Property_94863b4950a142459787ae93b5112b53_Out_0 = _BorderRadiusOffset;


					float4 _Add_3350539869024db69371d91fd4d885c9_Out_2;
					Unity_Add_float4((_Property_f6d590d76a8f48dc9f0349c29ec7cf83_Out_0.xxxx), _Property_94863b4950a142459787ae93b5112b53_Out_0, _Add_3350539869024db69371d91fd4d885c9_Out_2);


					float _Property_5235485a4f7e49c986bd2e47d6e9ff41_Out_0 = _InnerRoundingPercent;


					float4 _Multiply_949acca2a8f24b0597dfcd5e42ee3346_Out_2;
					Unity_Multiply_float(_Add_3350539869024db69371d91fd4d885c9_Out_2, (_Property_5235485a4f7e49c986bd2e47d6e9ff41_Out_0.xxxx), _Multiply_949acca2a8f24b0597dfcd5e42ee3346_Out_2);


					float _Property_699e528be73043cbb90fe9bd11249198_Out_0 = _Radius;


					float _Property_ada430682c0e4f56852687f910701391_Out_0 = _Width;


					float _Property_7c3e669d72bb471d9cecad97ae6c6d9d_Out_0 = _Arc;


					Bindings_CircleSize_c061357d2877b5046b04d83f9968414a _CircleSize_c6277a503e274126b19ab5a345960a72;
					_CircleSize_c6277a503e274126b19ab5a345960a72.uv = IN.uv;
					float _CircleSize_c6277a503e274126b19ab5a345960a72_Length_1;
					SG_CircleSize_c061357d2877b5046b04d83f9968414a(_Property_699e528be73043cbb90fe9bd11249198_Out_0, _Property_ada430682c0e4f56852687f910701391_Out_0, _Property_7c3e669d72bb471d9cecad97ae6c6d9d_Out_0, 1, _CircleSize_c6277a503e274126b19ab5a345960a72, _CircleSize_c6277a503e274126b19ab5a345960a72_Length_1);


					float _Divide_f94bff34c586469c99f78428ec3cf617_Out_2;
					Unity_Divide_float(_CircleSize_c6277a503e274126b19ab5a345960a72_Length_1, _Property_699e528be73043cbb90fe9bd11249198_Out_0, _Divide_f94bff34c586469c99f78428ec3cf617_Out_2);


					float4 _Multiply_4ca8ce570be84af88db6b47dae405fd8_Out_2;
					Unity_Multiply_float(_Multiply_949acca2a8f24b0597dfcd5e42ee3346_Out_2, (_Divide_f94bff34c586469c99f78428ec3cf617_Out_2.xxxx), _Multiply_4ca8ce570be84af88db6b47dae405fd8_Out_2);


					#if defined(SHAPE_LINEAR)
					float4 _Shape_8535f0661de14a3eb71bca90a8e6d91d_Out_0 = _Multiply_949acca2a8f24b0597dfcd5e42ee3346_Out_2;
					#else
					float4 _Shape_8535f0661de14a3eb71bca90a8e6d91d_Out_0 = _Multiply_4ca8ce570be84af88db6b47dae405fd8_Out_2;
#endif


					float4 _Multiply_875f75ebc15b4d87838ffd3c826f2df9_Out_2;
					Unity_Multiply_float((_SampleTexture2D_7fe52d0eb40d4b88a0ab1c3f0455708f_R_4.xxxx), _Shape_8535f0661de14a3eb71bca90a8e6d91d_Out_0, _Multiply_875f75ebc15b4d87838ffd3c826f2df9_Out_2);


					float4 _Branch_79e518cb97734453b0fdc2536bb33f34_Out_3;
					Unity_Branch_float4(_Property_6457488dbffb4310990eaaaa96bbc7c6_Out_0, _Multiply_875f75ebc15b4d87838ffd3c826f2df9_Out_2, _Shape_8535f0661de14a3eb71bca90a8e6d91d_Out_0, _Branch_79e518cb97734453b0fdc2536bb33f34_Out_3);


					float _Split_0db060179b9c4f2b936ceb40fb79d54c_R_1 = _Branch_79e518cb97734453b0fdc2536bb33f34_Out_3[0];
					float _Split_0db060179b9c4f2b936ceb40fb79d54c_G_2 = _Branch_79e518cb97734453b0fdc2536bb33f34_Out_3[1];
					float _Split_0db060179b9c4f2b936ceb40fb79d54c_B_3 = _Branch_79e518cb97734453b0fdc2536bb33f34_Out_3[2];
					float _Split_0db060179b9c4f2b936ceb40fb79d54c_A_4 = _Branch_79e518cb97734453b0fdc2536bb33f34_Out_3[3];


					float2 _Vector2_fb6fb4f6afab47f5978f00776436ef56_Out_0 = float2(_Split_0db060179b9c4f2b936ceb40fb79d54c_R_1, _Split_0db060179b9c4f2b936ceb40fb79d54c_A_4);


					float2 _Vector2_cb0ff18389844ba1828cdc9942937261_Out_0 = float2(_Split_0db060179b9c4f2b936ceb40fb79d54c_G_2, _Split_0db060179b9c4f2b936ceb40fb79d54c_B_3);


					float2 _Branch_239f9298038446fb82f974f73359c8c5_Out_3;
					Unity_Branch_float2(_Comparison_19e19d7f35b74089aff0430c87627724_Out_2, _Vector2_fb6fb4f6afab47f5978f00776436ef56_Out_0, _Vector2_cb0ff18389844ba1828cdc9942937261_Out_0, _Branch_239f9298038446fb82f974f73359c8c5_Out_3);


					float _Split_2a43943c95c8421c9427234a46b36d95_R_1 = _Branch_239f9298038446fb82f974f73359c8c5_Out_3[0];
					float _Split_2a43943c95c8421c9427234a46b36d95_G_2 = _Branch_239f9298038446fb82f974f73359c8c5_Out_3[1];
					float _Split_2a43943c95c8421c9427234a46b36d95_B_3 = 0;
					float _Split_2a43943c95c8421c9427234a46b36d95_A_4 = 0;


					float _Branch_66dcdafee4f6442a8b27c84834840d25_Out_3;
					Unity_Branch_float(_Comparison_60dd2c70a16c4ea69bc8f8b6adc984a3_Out_2, _Split_2a43943c95c8421c9427234a46b36d95_R_1, _Split_2a43943c95c8421c9427234a46b36d95_G_2, _Branch_66dcdafee4f6442a8b27c84834840d25_Out_3);


					float2 _Add_bc4b6bd69e034ce3823135358af73671_Out_2;
					Unity_Add_float2(_Subtract_9f8b9461f80d46f69aebbc311edb9a18_Out_2, (_Branch_66dcdafee4f6442a8b27c84834840d25_Out_3.xx), _Add_bc4b6bd69e034ce3823135358af73671_Out_2);


					float2 _Maximum_7d4e239172f84b329ab2ac260cfc612d_Out_2;
					Unity_Maximum_float2(float2(0, 0), _Add_bc4b6bd69e034ce3823135358af73671_Out_2, _Maximum_7d4e239172f84b329ab2ac260cfc612d_Out_2);


					float _Length_1bbd49ee181d4625996b719a9b2826ce_Out_1;
					Unity_Length_float2(_Maximum_7d4e239172f84b329ab2ac260cfc612d_Out_2, _Length_1bbd49ee181d4625996b719a9b2826ce_Out_1);


					float _Split_0131bb0b98ca4e6390a5496b031f5e0a_R_1 = _Add_bc4b6bd69e034ce3823135358af73671_Out_2[0];
					float _Split_0131bb0b98ca4e6390a5496b031f5e0a_G_2 = _Add_bc4b6bd69e034ce3823135358af73671_Out_2[1];
					float _Split_0131bb0b98ca4e6390a5496b031f5e0a_B_3 = 0;
					float _Split_0131bb0b98ca4e6390a5496b031f5e0a_A_4 = 0;


					float _Maximum_c9ff9bdf0548451292a437c0fe96639e_Out_2;
					Unity_Maximum_float(_Split_0131bb0b98ca4e6390a5496b031f5e0a_R_1, _Split_0131bb0b98ca4e6390a5496b031f5e0a_G_2, _Maximum_c9ff9bdf0548451292a437c0fe96639e_Out_2);


					float _Minimum_65768458410643d8a54c4094b0ba4b74_Out_2;
					Unity_Minimum_float(_Maximum_c9ff9bdf0548451292a437c0fe96639e_Out_2, 0, _Minimum_65768458410643d8a54c4094b0ba4b74_Out_2);


					float _Add_175642cacf42407dad10d6f29fd9c6a9_Out_2;
					Unity_Add_float(_Length_1bbd49ee181d4625996b719a9b2826ce_Out_1, _Minimum_65768458410643d8a54c4094b0ba4b74_Out_2, _Add_175642cacf42407dad10d6f29fd9c6a9_Out_2);


					float _Subtract_68abc4c7eee541d8922492e94ecc1d71_Out_2;
					Unity_Subtract_float(_Add_175642cacf42407dad10d6f29fd9c6a9_Out_2, _Branch_66dcdafee4f6442a8b27c84834840d25_Out_3, _Subtract_68abc4c7eee541d8922492e94ecc1d71_Out_2);


					float _Property_58cd714d6f774213917d9e7e049dbb88_Out_0 = _BorderWidth;


					float _Add_0775d27cf74d40388bf6e8a8b299ffac_Out_2;
					Unity_Add_float(_Subtract_68abc4c7eee541d8922492e94ecc1d71_Out_2, _Property_58cd714d6f774213917d9e7e049dbb88_Out_0, _Add_0775d27cf74d40388bf6e8a8b299ffac_Out_2);


					float _Maximum_fc39af96fc1b4720a9c22e4ce72efffb_Out_2;
					Unity_Maximum_float(_Add_7c05399159814839b941e7bb86e5d982_Out_2, _Add_0775d27cf74d40388bf6e8a8b299ffac_Out_2, _Maximum_fc39af96fc1b4720a9c22e4ce72efffb_Out_2);


					float _Negate_604e7bf51e4c469c98a5f5400b02c3fb_Out_1;
					Unity_Negate_float(_Maximum_fc39af96fc1b4720a9c22e4ce72efffb_Out_2, _Negate_604e7bf51e4c469c98a5f5400b02c3fb_Out_1);


					float _Subtract_4164c265708c4980beb05e7d8be334af_Out_2;
					Unity_Subtract_float(_Negate_604e7bf51e4c469c98a5f5400b02c3fb_Out_1, _Property_52188ef57de3441aa47eecc324b31fec_Out_0, _Subtract_4164c265708c4980beb05e7d8be334af_Out_2);


					float _Property_5d046f2457884a5baec49e08b178ca67_Out_0 = _Pixelate;


					float _Property_5458cc4f31ae4d9e9b488ba944b67bce_Out_0 = _PixelCount;


					Bindings_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe _Pixelation_2b1c31182c194ac7919b6897b1feb512;
					_Pixelation_2b1c31182c194ac7919b6897b1feb512.uv = IN.uv;
					float2 _Pixelation_2b1c31182c194ac7919b6897b1feb512_OutVector2_1;
					SG_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe(_Property_5d046f2457884a5baec49e08b178ca67_Out_0, _Property_5458cc4f31ae4d9e9b488ba944b67bce_Out_0, _Pixelation_2b1c31182c194ac7919b6897b1feb512, _Pixelation_2b1c31182c194ac7919b6897b1feb512_OutVector2_1);


					float _Split_364be6a9c71148e3976a2edabdc19251_R_1 = float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z)))[0];
					float _Split_364be6a9c71148e3976a2edabdc19251_G_2 = float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z)))[1];
					float _Split_364be6a9c71148e3976a2edabdc19251_B_3 = float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z)))[2];
					float _Split_364be6a9c71148e3976a2edabdc19251_A_4 = 0;


					float2 _Vector2_77d6467a910544f39b86c5cc317f86b1_Out_0 = float2(_Split_364be6a9c71148e3976a2edabdc19251_R_1, _Split_364be6a9c71148e3976a2edabdc19251_G_2);


					float _Property_b83e3fbc8a484744ab227c63e9b48f8b_Out_0 = _ValueNoise2Scale;


					float _Property_6f849f5dd3e24566ad1552b8e4589d8d_Out_0 = _ValueNoise2Inensity;


					float2 _Property_3f08d96d924b4e339fc8a4d7a91bd991_Out_0 = _ValueNoise2Movement;


					Bindings_NoiseGen_c55111e92b33ead43bfb3a6e73cf02d5 _NoiseGen_b600ee12feea4590a315cc128069308f;
					_NoiseGen_b600ee12feea4590a315cc128069308f.uv = IN.uv;
					_NoiseGen_b600ee12feea4590a315cc128069308f.TimeParameters = _Time;
					float _NoiseGen_b600ee12feea4590a315cc128069308f_OutVector1_1;
					SG_NoiseGen_c55111e92b33ead43bfb3a6e73cf02d5(_Pixelation_2b1c31182c194ac7919b6897b1feb512_OutVector2_1, _Vector2_77d6467a910544f39b86c5cc317f86b1_Out_0, _Property_b83e3fbc8a484744ab227c63e9b48f8b_Out_0, _Property_6f849f5dd3e24566ad1552b8e4589d8d_Out_0, _Property_3f08d96d924b4e339fc8a4d7a91bd991_Out_0, _NoiseGen_b600ee12feea4590a315cc128069308f, _NoiseGen_b600ee12feea4590a315cc128069308f_OutVector1_1);


					float _Split_bd6618f297ef47229a2286fa0f3695e1_R_1 = float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z)))[0];
					float _Split_bd6618f297ef47229a2286fa0f3695e1_G_2 = float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z)))[1];
					float _Split_bd6618f297ef47229a2286fa0f3695e1_B_3 = float3(length(float3(UNITY_MATRIX_M[0].x, UNITY_MATRIX_M[1].x, UNITY_MATRIX_M[2].x)),
											 length(float3(UNITY_MATRIX_M[0].y, UNITY_MATRIX_M[1].y, UNITY_MATRIX_M[2].y)),
											 length(float3(UNITY_MATRIX_M[0].z, UNITY_MATRIX_M[1].z, UNITY_MATRIX_M[2].z)))[2];
					float _Split_bd6618f297ef47229a2286fa0f3695e1_A_4 = 0;


					float2 _Vector2_12ed770605fd44d68471a4db5bb83ce8_Out_0 = float2(_Split_bd6618f297ef47229a2286fa0f3695e1_R_1, _Split_bd6618f297ef47229a2286fa0f3695e1_G_2);


					float _Property_5a17389bf29348adbd90e76319d587f9_Out_0 = Vector1_584f1dfb499a4108902ac8d68d13a822;


					float _Property_feab31dfa828431784bb8d2815c1f92e_Out_0 = _ValueNoiseIntensity;


					float2 _Property_e1a9ddd7e8de40f38e109b97b9d6ff19_Out_0 = _VirtualNoiseMovement;


					Bindings_NoiseGen_c55111e92b33ead43bfb3a6e73cf02d5 _NoiseGen_38682e00822d435296485629131284f4;
					_NoiseGen_38682e00822d435296485629131284f4.uv = IN.uv;
					_NoiseGen_38682e00822d435296485629131284f4.TimeParameters = _Time;
					float _NoiseGen_38682e00822d435296485629131284f4_OutVector1_1;
					SG_NoiseGen_c55111e92b33ead43bfb3a6e73cf02d5(_Pixelation_2b1c31182c194ac7919b6897b1feb512_OutVector2_1, _Vector2_12ed770605fd44d68471a4db5bb83ce8_Out_0, _Property_5a17389bf29348adbd90e76319d587f9_Out_0, _Property_feab31dfa828431784bb8d2815c1f92e_Out_0, _Property_e1a9ddd7e8de40f38e109b97b9d6ff19_Out_0, _NoiseGen_38682e00822d435296485629131284f4, _NoiseGen_38682e00822d435296485629131284f4_OutVector1_1);


					float _Add_df18afc0b0154ef784fec325bc3db1cf_Out_2;
					Unity_Add_float(_NoiseGen_38682e00822d435296485629131284f4_OutVector1_1, _Subtract_4164c265708c4980beb05e7d8be334af_Out_2, _Add_df18afc0b0154ef784fec325bc3db1cf_Out_2);


					float _Add_3e5aa582ae4a4417afd76ccd75f98fbf_Out_2;
					Unity_Add_float(_NoiseGen_b600ee12feea4590a315cc128069308f_OutVector1_1, _Add_df18afc0b0154ef784fec325bc3db1cf_Out_2, _Add_3e5aa582ae4a4417afd76ccd75f98fbf_Out_2);


					Bindings_SDFView_49c002e44632b5b48a751fb2cd023151 _SDFView_e2befaa3addf4014bd7c12c52eaa4966;
					float _SDFView_e2befaa3addf4014bd7c12c52eaa4966_Out_0;
					SG_SDFView_49c002e44632b5b48a751fb2cd023151(_Property_51e60f2bcb9048c4bcb455425e0b697d_Out_0, _Subtract_4164c265708c4980beb05e7d8be334af_Out_2, _Add_3e5aa582ae4a4417afd76ccd75f98fbf_Out_2, _SDFView_e2befaa3addf4014bd7c12c52eaa4966, _SDFView_e2befaa3addf4014bd7c12c52eaa4966_Out_0);


					float4 _Lerp_da51e7674e4b4be4887d3eeb3ac30c01_Out_3;
					Unity_Lerp_float4(_ColorMul_abbe0a82fd2a475293cc64d632b0d4f0_OutVector4_1, _InnerTextureOn_d3ae2e993a6d4e2e80e90afb08ebe6a6_Out_0, (_SDFView_e2befaa3addf4014bd7c12c52eaa4966_Out_0.xxxx), _Lerp_da51e7674e4b4be4887d3eeb3ac30c01_Out_3);


					float _Add_92f3e4741dd944d6b2126d6b2532b4b5_Out_2;
					Unity_Add_float(_NoiseGen_38682e00822d435296485629131284f4_OutVector1_1, _Negate_604e7bf51e4c469c98a5f5400b02c3fb_Out_1, _Add_92f3e4741dd944d6b2126d6b2532b4b5_Out_2);


					float _Add_7c3db4c6431744d48ecbcd8f87ce28d4_Out_2;
					Unity_Add_float(_NoiseGen_b600ee12feea4590a315cc128069308f_OutVector1_1, _Add_92f3e4741dd944d6b2126d6b2532b4b5_Out_2, _Add_7c3db4c6431744d48ecbcd8f87ce28d4_Out_2);


					Bindings_SDFView_49c002e44632b5b48a751fb2cd023151 _SDFView_4a6ea0b7c5064faf80b5929d92d5a946;
					float _SDFView_4a6ea0b7c5064faf80b5929d92d5a946_Out_0;
					SG_SDFView_49c002e44632b5b48a751fb2cd023151(_Property_51e60f2bcb9048c4bcb455425e0b697d_Out_0, _Negate_604e7bf51e4c469c98a5f5400b02c3fb_Out_1, _Add_7c3db4c6431744d48ecbcd8f87ce28d4_Out_2, _SDFView_4a6ea0b7c5064faf80b5929d92d5a946, _SDFView_4a6ea0b7c5064faf80b5929d92d5a946_Out_0);


					float4 _Lerp_d378d6177b71487f89857394cc688901_Out_3;
					Unity_Lerp_float4(_BackgroundTextureOn_32fedfa7ab7d41b0afacb3a15f240fcb_Out_0, _Lerp_da51e7674e4b4be4887d3eeb3ac30c01_Out_3, (_SDFView_4a6ea0b7c5064faf80b5929d92d5a946_Out_0.xxxx), _Lerp_d378d6177b71487f89857394cc688901_Out_3);


					float _Property_8b46309962144f0cbde243942555cd89_Out_0 = _ValueInsetShadowSize;


					float _Ceiling_d6b1b792aaef4917ab307a8844025807_Out_1;
					Unity_Ceiling_float(_Property_8b46309962144f0cbde243942555cd89_Out_0, _Ceiling_d6b1b792aaef4917ab307a8844025807_Out_1);


					float _Saturate_2487e1b1138d4d54ad8b72cf3d97d3da_Out_1;
					Unity_Saturate_float(_Ceiling_d6b1b792aaef4917ab307a8844025807_Out_1, _Saturate_2487e1b1138d4d54ad8b72cf3d97d3da_Out_1);


					float4 _Property_7d2351645f48492da2fece55d59e4a96_Out_0 = _ValueInsetShadowColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_fa434a4d7da94424ab33f46f6d11fa9a;
					float4 _ColorMul_fa434a4d7da94424ab33f46f6d11fa9a_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(_Saturate_2487e1b1138d4d54ad8b72cf3d97d3da_Out_1, _Property_7d2351645f48492da2fece55d59e4a96_Out_0, _ColorMul_fa434a4d7da94424ab33f46f6d11fa9a, _ColorMul_fa434a4d7da94424ab33f46f6d11fa9a_OutVector4_1);


					float _Preview_443be4c674014bb7950428178d8aeb10_Out_1;
					Unity_Preview_float(_SDFView_4a6ea0b7c5064faf80b5929d92d5a946_Out_0, _Preview_443be4c674014bb7950428178d8aeb10_Out_1);


					float _Preview_e9c21b6521f34bab904588d64fc606eb_Out_1;
					Unity_Preview_float(_Add_7c3db4c6431744d48ecbcd8f87ce28d4_Out_2, _Preview_e9c21b6521f34bab904588d64fc606eb_Out_1);


					float _Property_2b94eb03f0d24b22b069147da0b9f635_Out_0 = _ValueInsetShadowFalloff;


					Bindings_SDFShadow_a024649aee42a0d4ea2a840d23a784ed _SDFShadow_9ca7b4cfa2474f52aa0fe82ea83ef145;
					float _SDFShadow_9ca7b4cfa2474f52aa0fe82ea83ef145_Mask_1;
					SG_SDFShadow_a024649aee42a0d4ea2a840d23a784ed(0, _Preview_e9c21b6521f34bab904588d64fc606eb_Out_1, _Property_8b46309962144f0cbde243942555cd89_Out_0, _Property_2b94eb03f0d24b22b069147da0b9f635_Out_0, _SDFShadow_9ca7b4cfa2474f52aa0fe82ea83ef145, _SDFShadow_9ca7b4cfa2474f52aa0fe82ea83ef145_Mask_1);


					float _Minimum_578f750a791b4f8f96a08563966720c6_Out_2;
					Unity_Minimum_float(_Preview_443be4c674014bb7950428178d8aeb10_Out_1, _SDFShadow_9ca7b4cfa2474f52aa0fe82ea83ef145_Mask_1, _Minimum_578f750a791b4f8f96a08563966720c6_Out_2);


					float _Multiply_d4a03de0ef004ff6970f58969857fb8d_Out_2;
					Unity_Multiply_float(_Saturate_2487e1b1138d4d54ad8b72cf3d97d3da_Out_1, _Minimum_578f750a791b4f8f96a08563966720c6_Out_2, _Multiply_d4a03de0ef004ff6970f58969857fb8d_Out_2);


					float4 _Lerp_55aab67d01b34cbebd69a0d171b624d7_Out_3;
					Unity_Lerp_float4(_Lerp_d378d6177b71487f89857394cc688901_Out_3, _ColorMul_fa434a4d7da94424ab33f46f6d11fa9a_OutVector4_1, (_Multiply_d4a03de0ef004ff6970f58969857fb8d_Out_2.xxxx), _Lerp_55aab67d01b34cbebd69a0d171b624d7_Out_3);


					float _Property_bc16f2ec00b14d09a6bc313e0f654658_Out_0 = _ValueShadowSize;


					float _Ceiling_74b5e348b5584f0fa56bb19ad34eb59d_Out_1;
					Unity_Ceiling_float(_Property_bc16f2ec00b14d09a6bc313e0f654658_Out_0, _Ceiling_74b5e348b5584f0fa56bb19ad34eb59d_Out_1);


					float _Saturate_a5e97defc60e4ae6974e6b6c43c396f6_Out_1;
					Unity_Saturate_float(_Ceiling_74b5e348b5584f0fa56bb19ad34eb59d_Out_1, _Saturate_a5e97defc60e4ae6974e6b6c43c396f6_Out_1);


					float4 _Property_48129be15dc64ba4b11c15656ac11bba_Out_0 = _ValueShadowColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_34975ca96ec849df8768794398e2f9be;
					float4 _ColorMul_34975ca96ec849df8768794398e2f9be_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(_Saturate_a5e97defc60e4ae6974e6b6c43c396f6_Out_1, _Property_48129be15dc64ba4b11c15656ac11bba_Out_0, _ColorMul_34975ca96ec849df8768794398e2f9be, _ColorMul_34975ca96ec849df8768794398e2f9be_OutVector4_1);


					float _Property_ccc113b159f34e9c930c2035f74c3139_Out_0 = _ValueShadowFalloff;


					Bindings_SDFShadow_a024649aee42a0d4ea2a840d23a784ed _SDFShadow_55d892f268574595842d4d2b358069cb;
					float _SDFShadow_55d892f268574595842d4d2b358069cb_Mask_1;
					SG_SDFShadow_a024649aee42a0d4ea2a840d23a784ed(1, _Preview_e9c21b6521f34bab904588d64fc606eb_Out_1, _Property_bc16f2ec00b14d09a6bc313e0f654658_Out_0, _Property_ccc113b159f34e9c930c2035f74c3139_Out_0, _SDFShadow_55d892f268574595842d4d2b358069cb, _SDFShadow_55d892f268574595842d4d2b358069cb_Mask_1);


					float _OneMinus_4ff664e5d6954ca38f8d90cfe81a638c_Out_1;
					Unity_OneMinus_float(_SDFView_4a6ea0b7c5064faf80b5929d92d5a946_Out_0, _OneMinus_4ff664e5d6954ca38f8d90cfe81a638c_Out_1);


					float _Minimum_3bd29f01abef45a5b995389dc6d0a391_Out_2;
					Unity_Minimum_float(_SDFShadow_55d892f268574595842d4d2b358069cb_Mask_1, _OneMinus_4ff664e5d6954ca38f8d90cfe81a638c_Out_1, _Minimum_3bd29f01abef45a5b995389dc6d0a391_Out_2);


					float _Multiply_637eb4a0ba31460a8f2c68a7e6119188_Out_2;
					Unity_Multiply_float(_Saturate_a5e97defc60e4ae6974e6b6c43c396f6_Out_1, _Minimum_3bd29f01abef45a5b995389dc6d0a391_Out_2, _Multiply_637eb4a0ba31460a8f2c68a7e6119188_Out_2);


					float4 _Lerp_77dbba5006ff45b2ad5ad3b971515181_Out_3;
					Unity_Lerp_float4(_Lerp_55aab67d01b34cbebd69a0d171b624d7_Out_3, _ColorMul_34975ca96ec849df8768794398e2f9be_OutVector4_1, (_Multiply_637eb4a0ba31460a8f2c68a7e6119188_Out_2.xxxx), _Lerp_77dbba5006ff45b2ad5ad3b971515181_Out_3);


					float _Property_5ac37001379a4baab121ba597dc3ea73_Out_0 = _Pixelate;


					float _Property_7795b4ec2b19409bbd47c21da461652b_Out_0 = _PixelCount;


					Bindings_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe _Pixelation_5c36fd5dd64b4267965102d6df0d30b7;
					_Pixelation_5c36fd5dd64b4267965102d6df0d30b7.uv = IN.uv;
					float2 _Pixelation_5c36fd5dd64b4267965102d6df0d30b7_OutVector2_1;
					SG_Pixelation_0f6bf3a55e69ed14d920056a28bd6afe(_Property_5ac37001379a4baab121ba597dc3ea73_Out_0, _Property_7795b4ec2b19409bbd47c21da461652b_Out_0, _Pixelation_5c36fd5dd64b4267965102d6df0d30b7, _Pixelation_5c36fd5dd64b4267965102d6df0d30b7_OutVector2_1);


					float2 _Vector2_28efc97bb0514fd3b460b7769e56b107_Out_0 = float2(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6);


					float _Divide_37884749d35e43ef88a5910407010d1c_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, 2, _Divide_37884749d35e43ef88a5910407010d1c_Out_2);


					float _Negate_6f69611c0d3444df8f5f4d2390460356_Out_1;
					Unity_Negate_float(_Divide_37884749d35e43ef88a5910407010d1c_Out_2, _Negate_6f69611c0d3444df8f5f4d2390460356_Out_1);


					float2 _Vector2_b0b7f0e62b4d4f5abda7253cc09807d5_Out_0 = float2(0, _Negate_6f69611c0d3444df8f5f4d2390460356_Out_1);


					float2 _TilingAndOffset_94a98269d89d45b987cfc69664ccee94_Out_3;
					Unity_TilingAndOffset_float(_Pixelation_5c36fd5dd64b4267965102d6df0d30b7_OutVector2_1, _Vector2_28efc97bb0514fd3b460b7769e56b107_Out_0, _Vector2_b0b7f0e62b4d4f5abda7253cc09807d5_Out_0, _TilingAndOffset_94a98269d89d45b987cfc69664ccee94_Out_3);


					float _Split_a55d693d2c8d435e839860d2f0b942cb_R_1 = _TilingAndOffset_94a98269d89d45b987cfc69664ccee94_Out_3[0];
					float _Split_a55d693d2c8d435e839860d2f0b942cb_G_2 = _TilingAndOffset_94a98269d89d45b987cfc69664ccee94_Out_3[1];
					float _Split_a55d693d2c8d435e839860d2f0b942cb_B_3 = 0;
					float _Split_a55d693d2c8d435e839860d2f0b942cb_A_4 = 0;


					float _Property_13577eb635c24fa4b2563a6ab0bed768_Out_0 = _SegmentCount;


					float _Divide_912d61c31de448d58a5de28b3a79d080_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Property_13577eb635c24fa4b2563a6ab0bed768_Out_0, _Divide_912d61c31de448d58a5de28b3a79d080_Out_2);


					float _Branch_a175f2dec9a94d66ba86760e7bb37b58_Out_3;
					Unity_Branch_float(1, _Divide_912d61c31de448d58a5de28b3a79d080_Out_2, _ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Branch_a175f2dec9a94d66ba86760e7bb37b58_Out_3);


					float _Modulo_7dc990273e0a4eba8f7b40f1cee64d3c_Out_2;
					Unity_Modulo_float(_Split_a55d693d2c8d435e839860d2f0b942cb_R_1, _Branch_a175f2dec9a94d66ba86760e7bb37b58_Out_3, _Modulo_7dc990273e0a4eba8f7b40f1cee64d3c_Out_2);


					float _Divide_f92b99e57f4b4f7a8bce9bd6f466f226_Out_2;
					Unity_Divide_float(_Branch_a175f2dec9a94d66ba86760e7bb37b58_Out_3, 2, _Divide_f92b99e57f4b4f7a8bce9bd6f466f226_Out_2);


					float _Subtract_43bc57b026664b1394ccd76c9349045a_Out_2;
					Unity_Subtract_float(_Modulo_7dc990273e0a4eba8f7b40f1cee64d3c_Out_2, _Divide_f92b99e57f4b4f7a8bce9bd6f466f226_Out_2, _Subtract_43bc57b026664b1394ccd76c9349045a_Out_2);


					float2 _Vector2_25d3243b12004994a6c5d1032b335731_Out_0 = float2(_Subtract_43bc57b026664b1394ccd76c9349045a_Out_2, _Split_a55d693d2c8d435e839860d2f0b942cb_G_2);


					float _Split_3fd94c7b886f475cb1532b7537540bc9_R_1 = _Vector2_25d3243b12004994a6c5d1032b335731_Out_0[0];
					float _Split_3fd94c7b886f475cb1532b7537540bc9_G_2 = _Vector2_25d3243b12004994a6c5d1032b335731_Out_0[1];
					float _Split_3fd94c7b886f475cb1532b7537540bc9_B_3 = 0;
					float _Split_3fd94c7b886f475cb1532b7537540bc9_A_4 = 0;


					float2 _Vector2_91fe89e70fb943d6a77655a03fdf1d45_Out_0 = float2(_Split_3fd94c7b886f475cb1532b7537540bc9_R_1, _Split_3fd94c7b886f475cb1532b7537540bc9_G_2);


					float2 _Absolute_509ec13166e840abb2de3e9fd0c03d0f_Out_1;
					Unity_Absolute_float2(_Vector2_91fe89e70fb943d6a77655a03fdf1d45_Out_0, _Absolute_509ec13166e840abb2de3e9fd0c03d0f_Out_1);


					float _Property_e6c890c355984b948641b1ceb6458051_Out_0 = _SegmentCount;


					float _Branch_a79078dba83c4433b36cba725fa5ab81_Out_3;
					Unity_Branch_float(1, _Property_e6c890c355984b948641b1ceb6458051_Out_0, 1, _Branch_a79078dba83c4433b36cba725fa5ab81_Out_3);


					float _Divide_d51016f26c2948c58ae5afddfa970c1d_Out_2;
					Unity_Divide_float(_ObjectScale_43e904cf1540426fbf40ba647070aad9_X_5, _Branch_a79078dba83c4433b36cba725fa5ab81_Out_3, _Divide_d51016f26c2948c58ae5afddfa970c1d_Out_2);


					float _Multiply_3f0b9b2ef6944f53abae3f672191d18c_Out_2;
					Unity_Multiply_float(_SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_R_4, _ObjectScale_43e904cf1540426fbf40ba647070aad9_Y_6, _Multiply_3f0b9b2ef6944f53abae3f672191d18c_Out_2);


					float2 _Vector2_dc04c0ace7714690a19a19ed5385149b_Out_0 = float2(_Divide_d51016f26c2948c58ae5afddfa970c1d_Out_2, _Multiply_3f0b9b2ef6944f53abae3f672191d18c_Out_2);


					float _Property_a8ed001a663343f6a944470f3eb13792_Out_0 = _SegmentSpacing;


					float _Divide_400af06b5f5249e795b815f0d937f677_Out_2;
					Unity_Divide_float(_Property_a8ed001a663343f6a944470f3eb13792_Out_0, 2, _Divide_400af06b5f5249e795b815f0d937f677_Out_2);


					float _Subtract_da69cd4fd234463c962896b0ac0c04d5_Out_2;
					Unity_Subtract_float(0.5, _Divide_400af06b5f5249e795b815f0d937f677_Out_2, _Subtract_da69cd4fd234463c962896b0ac0c04d5_Out_2);


					float _Property_ef4c5a16865348f4ab843461764c750b_Out_0 = _SegmentCount;


					float _Multiply_0d0e8747ed724678bdc13f3d59949e8d_Out_2;
					Unity_Multiply_float(_Property_ef4c5a16865348f4ab843461764c750b_Out_0, 2, _Multiply_0d0e8747ed724678bdc13f3d59949e8d_Out_2);


					float _Divide_a460ed105a9b4b759da5925c25c339c0_Out_2;
					Unity_Divide_float(_Property_a8ed001a663343f6a944470f3eb13792_Out_0, _Multiply_0d0e8747ed724678bdc13f3d59949e8d_Out_2, _Divide_a460ed105a9b4b759da5925c25c339c0_Out_2);


					float _Subtract_198e0e76077f41678636ad255ce23420_Out_2;
					Unity_Subtract_float(0.5, _Divide_a460ed105a9b4b759da5925c25c339c0_Out_2, _Subtract_198e0e76077f41678636ad255ce23420_Out_2);


					float _Branch_93208a6e7a7f402e8a50128c73ab26b1_Out_3;
					Unity_Branch_float(1, _Subtract_da69cd4fd234463c962896b0ac0c04d5_Out_2, _Subtract_198e0e76077f41678636ad255ce23420_Out_2, _Branch_93208a6e7a7f402e8a50128c73ab26b1_Out_3);


					float2 _Vector2_a116c19259504971a4adcd8b2f8298b5_Out_0 = float2(_Branch_93208a6e7a7f402e8a50128c73ab26b1_Out_3, 0.5);


					float2 _Multiply_c3434a9b865f41b0a636b4e19b673aff_Out_2;
					Unity_Multiply_float(_Vector2_dc04c0ace7714690a19a19ed5385149b_Out_0, _Vector2_a116c19259504971a4adcd8b2f8298b5_Out_0, _Multiply_c3434a9b865f41b0a636b4e19b673aff_Out_2);


					float2 _Subtract_841893475313471ebf457a5935b9377e_Out_2;
					Unity_Subtract_float2(_Absolute_509ec13166e840abb2de3e9fd0c03d0f_Out_1, _Multiply_c3434a9b865f41b0a636b4e19b673aff_Out_2, _Subtract_841893475313471ebf457a5935b9377e_Out_2);


					float _Comparison_fc449434cbdc4b2bb6dea2b1eeaa9a8b_Out_2;
					Unity_Comparison_Greater_float(_Split_3fd94c7b886f475cb1532b7537540bc9_G_2, 0, _Comparison_fc449434cbdc4b2bb6dea2b1eeaa9a8b_Out_2);


					float _Comparison_e2e157c0341a4dfb86ed0eb7a5e44565_Out_2;
					Unity_Comparison_Greater_float(_Split_3fd94c7b886f475cb1532b7537540bc9_R_1, 0, _Comparison_e2e157c0341a4dfb86ed0eb7a5e44565_Out_2);


					float _Property_d93c4daeef7c41d8b0b886fee74c9f6a_Out_0 = _AdjustBorderRadiusToWidthCurve;


					float _Property_72f05c29abe44c919674845ac0c15ced_Out_0 = _BorderRadius;


					float4 _Property_8b97ac938d64429b9efada47e287e848_Out_0 = _BorderRadiusOffset;


					float4 _Add_c487ce8b46804eae96fc2283448d1d44_Out_2;
					Unity_Add_float4((_Property_72f05c29abe44c919674845ac0c15ced_Out_0.xxxx), _Property_8b97ac938d64429b9efada47e287e848_Out_0, _Add_c487ce8b46804eae96fc2283448d1d44_Out_2);


					float _Property_9919cfc29adc4576a33b32308a3d9d9b_Out_0 = _Radius;


					float _Property_5be09d244874449d9a2e8a66c73377d6_Out_0 = _Width;


					float _Property_5307bf0719a6473e95c4692ae8545cf4_Out_0 = _Arc;


					Bindings_CircleSize_c061357d2877b5046b04d83f9968414a _CircleSize_be20b4d01e664eea977d75a2ff77c717;
					_CircleSize_be20b4d01e664eea977d75a2ff77c717.uv = IN.uv;
					float _CircleSize_be20b4d01e664eea977d75a2ff77c717_Length_1;
					SG_CircleSize_c061357d2877b5046b04d83f9968414a(_Property_9919cfc29adc4576a33b32308a3d9d9b_Out_0, _Property_5be09d244874449d9a2e8a66c73377d6_Out_0, _Property_5307bf0719a6473e95c4692ae8545cf4_Out_0, 1, _CircleSize_be20b4d01e664eea977d75a2ff77c717, _CircleSize_be20b4d01e664eea977d75a2ff77c717_Length_1);


					float _Divide_febdd428ab0147e99ca92e94e65c9c48_Out_2;
					Unity_Divide_float(_CircleSize_be20b4d01e664eea977d75a2ff77c717_Length_1, _Property_9919cfc29adc4576a33b32308a3d9d9b_Out_0, _Divide_febdd428ab0147e99ca92e94e65c9c48_Out_2);


					float4 _Multiply_d86a221a2967486ab7c06033f3dc4092_Out_2;
					Unity_Multiply_float(_Add_c487ce8b46804eae96fc2283448d1d44_Out_2, (_Divide_febdd428ab0147e99ca92e94e65c9c48_Out_2.xxxx), _Multiply_d86a221a2967486ab7c06033f3dc4092_Out_2);


					#if defined(SHAPE_LINEAR)
					float4 _Shape_38c5ebb063f743249bfccfd5e6c953cd_Out_0 = _Add_c487ce8b46804eae96fc2283448d1d44_Out_2;
					#else
					float4 _Shape_38c5ebb063f743249bfccfd5e6c953cd_Out_0 = _Multiply_d86a221a2967486ab7c06033f3dc4092_Out_2;
#endif


					float4 _Multiply_5cdb51a452d44d27b60d8cad60982c64_Out_2;
					Unity_Multiply_float((_SampleTexture2D_c848e81b9aa54cfaaae46fb34c3d9db7_R_4.xxxx), _Shape_38c5ebb063f743249bfccfd5e6c953cd_Out_0, _Multiply_5cdb51a452d44d27b60d8cad60982c64_Out_2);


					float4 _Branch_f93925ac70fe4a589f295c5dc337bf9c_Out_3;
					Unity_Branch_float4(_Property_d93c4daeef7c41d8b0b886fee74c9f6a_Out_0, _Multiply_5cdb51a452d44d27b60d8cad60982c64_Out_2, _Shape_38c5ebb063f743249bfccfd5e6c953cd_Out_0, _Branch_f93925ac70fe4a589f295c5dc337bf9c_Out_3);


					float _Split_11a3f1b921b146be89726b440db05721_R_1 = _Branch_f93925ac70fe4a589f295c5dc337bf9c_Out_3[0];
					float _Split_11a3f1b921b146be89726b440db05721_G_2 = _Branch_f93925ac70fe4a589f295c5dc337bf9c_Out_3[1];
					float _Split_11a3f1b921b146be89726b440db05721_B_3 = _Branch_f93925ac70fe4a589f295c5dc337bf9c_Out_3[2];
					float _Split_11a3f1b921b146be89726b440db05721_A_4 = _Branch_f93925ac70fe4a589f295c5dc337bf9c_Out_3[3];


					float2 _Vector2_b71e5e576fc849e2bf6be7cb25ae4da1_Out_0 = float2(_Split_11a3f1b921b146be89726b440db05721_R_1, _Split_11a3f1b921b146be89726b440db05721_A_4);


					float2 _Vector2_29f5ac764342402198882d2a4cd99725_Out_0 = float2(_Split_11a3f1b921b146be89726b440db05721_G_2, _Split_11a3f1b921b146be89726b440db05721_B_3);


					float2 _Branch_53ddab6937a7435784105a45e436ca4b_Out_3;
					Unity_Branch_float2(_Comparison_e2e157c0341a4dfb86ed0eb7a5e44565_Out_2, _Vector2_b71e5e576fc849e2bf6be7cb25ae4da1_Out_0, _Vector2_29f5ac764342402198882d2a4cd99725_Out_0, _Branch_53ddab6937a7435784105a45e436ca4b_Out_3);


					float _Split_3427061dc5624a33831c71a1d494202e_R_1 = _Branch_53ddab6937a7435784105a45e436ca4b_Out_3[0];
					float _Split_3427061dc5624a33831c71a1d494202e_G_2 = _Branch_53ddab6937a7435784105a45e436ca4b_Out_3[1];
					float _Split_3427061dc5624a33831c71a1d494202e_B_3 = 0;
					float _Split_3427061dc5624a33831c71a1d494202e_A_4 = 0;


					float _Branch_2af186c1e39542f99568ad606f0f34bb_Out_3;
					Unity_Branch_float(_Comparison_fc449434cbdc4b2bb6dea2b1eeaa9a8b_Out_2, _Split_3427061dc5624a33831c71a1d494202e_R_1, _Split_3427061dc5624a33831c71a1d494202e_G_2, _Branch_2af186c1e39542f99568ad606f0f34bb_Out_3);


					float2 _Add_544e00af68c6410dab4fa130829a65db_Out_2;
					Unity_Add_float2(_Subtract_841893475313471ebf457a5935b9377e_Out_2, (_Branch_2af186c1e39542f99568ad606f0f34bb_Out_3.xx), _Add_544e00af68c6410dab4fa130829a65db_Out_2);


					float2 _Maximum_d3cd2df4a35a40288e22b717ef7180ce_Out_2;
					Unity_Maximum_float2(float2(0, 0), _Add_544e00af68c6410dab4fa130829a65db_Out_2, _Maximum_d3cd2df4a35a40288e22b717ef7180ce_Out_2);


					float _Length_fa4b28c4fb0c4247906859c3274cf72b_Out_1;
					Unity_Length_float2(_Maximum_d3cd2df4a35a40288e22b717ef7180ce_Out_2, _Length_fa4b28c4fb0c4247906859c3274cf72b_Out_1);


					float _Split_edb386436251447e8b86c62ced4dc6c3_R_1 = _Add_544e00af68c6410dab4fa130829a65db_Out_2[0];
					float _Split_edb386436251447e8b86c62ced4dc6c3_G_2 = _Add_544e00af68c6410dab4fa130829a65db_Out_2[1];
					float _Split_edb386436251447e8b86c62ced4dc6c3_B_3 = 0;
					float _Split_edb386436251447e8b86c62ced4dc6c3_A_4 = 0;


					float _Maximum_d2a31b3b358f491ba79de559e7168b2d_Out_2;
					Unity_Maximum_float(_Split_edb386436251447e8b86c62ced4dc6c3_R_1, _Split_edb386436251447e8b86c62ced4dc6c3_G_2, _Maximum_d2a31b3b358f491ba79de559e7168b2d_Out_2);


					float _Minimum_49fb994632e44c598697e2ee60c1473c_Out_2;
					Unity_Minimum_float(_Maximum_d2a31b3b358f491ba79de559e7168b2d_Out_2, 0, _Minimum_49fb994632e44c598697e2ee60c1473c_Out_2);


					float _Add_15f3cc71c4994af7a356e7fc2dd5bd8e_Out_2;
					Unity_Add_float(_Length_fa4b28c4fb0c4247906859c3274cf72b_Out_1, _Minimum_49fb994632e44c598697e2ee60c1473c_Out_2, _Add_15f3cc71c4994af7a356e7fc2dd5bd8e_Out_2);


					float _Subtract_bde9f1c602314aebaab60872d59504cd_Out_2;
					Unity_Subtract_float(_Add_15f3cc71c4994af7a356e7fc2dd5bd8e_Out_2, _Branch_2af186c1e39542f99568ad606f0f34bb_Out_3, _Subtract_bde9f1c602314aebaab60872d59504cd_Out_2);


					float _Negate_51be37402e9548dcaa6d57dc8995eab5_Out_1;
					Unity_Negate_float(_Subtract_bde9f1c602314aebaab60872d59504cd_Out_2, _Negate_51be37402e9548dcaa6d57dc8995eab5_Out_1);


					float _Subtract_a9995cd58a364e56805f9b3915abed71_Out_2;
					Unity_Subtract_float(_Negate_51be37402e9548dcaa6d57dc8995eab5_Out_1, _Property_2e332933560f409798fcfb0f4335f389_Out_0, _Subtract_a9995cd58a364e56805f9b3915abed71_Out_2);


					Bindings_SDFView_49c002e44632b5b48a751fb2cd023151 _SDFView_25d3e08f6d7c455ba16d4295ce80e546;
					float _SDFView_25d3e08f6d7c455ba16d4295ce80e546_Out_0;
					SG_SDFView_49c002e44632b5b48a751fb2cd023151(0, _Subtract_a9995cd58a364e56805f9b3915abed71_Out_2, _Subtract_a9995cd58a364e56805f9b3915abed71_Out_2, _SDFView_25d3e08f6d7c455ba16d4295ce80e546, _SDFView_25d3e08f6d7c455ba16d4295ce80e546_Out_0);


					float4 _Lerp_b84e80a927af493f99f8c55ccf55f753_Out_3;
					Unity_Lerp_float4(_BorderTextureOn_7cdb48d6ec784e90b13dea6fba734477_Out_0, _Lerp_77dbba5006ff45b2ad5ad3b971515181_Out_3, (_SDFView_25d3e08f6d7c455ba16d4295ce80e546_Out_0.xxxx), _Lerp_b84e80a927af493f99f8c55ccf55f753_Out_3);


					float _Property_728e86248d7543c889dd330c69ff902c_Out_0 = _BorderInsetShadowSize;


					float _Ceiling_b274942f77464af69c040a8d44d57b0b_Out_1;
					Unity_Ceiling_float(_Property_728e86248d7543c889dd330c69ff902c_Out_0, _Ceiling_b274942f77464af69c040a8d44d57b0b_Out_1);


					float _Saturate_cb8fad379529499dbe868a9395081f24_Out_1;
					Unity_Saturate_float(_Ceiling_b274942f77464af69c040a8d44d57b0b_Out_1, _Saturate_cb8fad379529499dbe868a9395081f24_Out_1);


					float4 _Property_2cd2b65066d6456796b89fb011adc0eb_Out_0 = _BorderInsetShadowColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_815d84cb0b954080a8025adcb5e07fdc;
					float4 _ColorMul_815d84cb0b954080a8025adcb5e07fdc_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(_Saturate_cb8fad379529499dbe868a9395081f24_Out_1, _Property_2cd2b65066d6456796b89fb011adc0eb_Out_0, _ColorMul_815d84cb0b954080a8025adcb5e07fdc, _ColorMul_815d84cb0b954080a8025adcb5e07fdc_OutVector4_1);


					float _Property_e12499eac2b647dca9c7419d7ca41407_Out_0 = _AntiAlias;


					float _Property_cd8da69195d94221a53a19fa0d2976f9_Out_0 = _BorderWidth;


					Bindings_SDFOutline_7baf1367a60f0344b91453021cca5db1 _SDFOutline_03614bbb76514131b9977883107a18df;
					float _SDFOutline_03614bbb76514131b9977883107a18df_OutVector1_1;
					SG_SDFOutline_7baf1367a60f0344b91453021cca5db1(_Negate_51be37402e9548dcaa6d57dc8995eab5_Out_1, _Property_cd8da69195d94221a53a19fa0d2976f9_Out_0, 0, _SDFOutline_03614bbb76514131b9977883107a18df, _SDFOutline_03614bbb76514131b9977883107a18df_OutVector1_1);


					Bindings_SDFView_49c002e44632b5b48a751fb2cd023151 _SDFView_e95d30ba6fc747e0a2ed6efc2f31a36d;
					float _SDFView_e95d30ba6fc747e0a2ed6efc2f31a36d_Out_0;
					SG_SDFView_49c002e44632b5b48a751fb2cd023151(_Property_e12499eac2b647dca9c7419d7ca41407_Out_0, _SDFOutline_03614bbb76514131b9977883107a18df_OutVector1_1, _SDFOutline_03614bbb76514131b9977883107a18df_OutVector1_1, _SDFView_e95d30ba6fc747e0a2ed6efc2f31a36d, _SDFView_e95d30ba6fc747e0a2ed6efc2f31a36d_Out_0);


					float _OneMinus_d3c822580da64fd4a0a416e7c4e4d371_Out_1;
					Unity_OneMinus_float(_SDFView_e95d30ba6fc747e0a2ed6efc2f31a36d_Out_0, _OneMinus_d3c822580da64fd4a0a416e7c4e4d371_Out_1);

					float _Property_92c4f94ddb764257818a4f089352ed4e_Out_0 = _BorderInsetShadowFalloff;


					Bindings_SDFShadow_a024649aee42a0d4ea2a840d23a784ed _SDFShadow_dea91193b82149d49479fcd9f78c5f6a;
					float _SDFShadow_dea91193b82149d49479fcd9f78c5f6a_Mask_1;
					SG_SDFShadow_a024649aee42a0d4ea2a840d23a784ed(1, _SDFOutline_03614bbb76514131b9977883107a18df_OutVector1_1, _Property_728e86248d7543c889dd330c69ff902c_Out_0, _Property_92c4f94ddb764257818a4f089352ed4e_Out_0, _SDFShadow_dea91193b82149d49479fcd9f78c5f6a, _SDFShadow_dea91193b82149d49479fcd9f78c5f6a_Mask_1);


					float _Minimum_7a4e8fc45d5d470fa4267255cb984123_Out_2;
					Unity_Minimum_float(_OneMinus_d3c822580da64fd4a0a416e7c4e4d371_Out_1, _SDFShadow_dea91193b82149d49479fcd9f78c5f6a_Mask_1, _Minimum_7a4e8fc45d5d470fa4267255cb984123_Out_2);


					float _Multiply_ec8abe7367ba4d5aaf0f24da9141cce8_Out_2;
					Unity_Multiply_float(_Ceiling_b274942f77464af69c040a8d44d57b0b_Out_1, _Minimum_7a4e8fc45d5d470fa4267255cb984123_Out_2, _Multiply_ec8abe7367ba4d5aaf0f24da9141cce8_Out_2);


					float4 _Lerp_878619dc0c1141a9addb321f100c5a3d_Out_3;
					Unity_Lerp_float4(_Lerp_b84e80a927af493f99f8c55ccf55f753_Out_3, _ColorMul_815d84cb0b954080a8025adcb5e07fdc_OutVector4_1, (_Multiply_ec8abe7367ba4d5aaf0f24da9141cce8_Out_2.xxxx), _Lerp_878619dc0c1141a9addb321f100c5a3d_Out_3);


					float _Property_1325fcfa91644ffb856f92dc299bcd52_Out_0 = _BorderShadowSize;


					float _Ceiling_5e36c3e6764f4fa9bd3d27752b57042d_Out_1;
					Unity_Ceiling_float(_Property_1325fcfa91644ffb856f92dc299bcd52_Out_0, _Ceiling_5e36c3e6764f4fa9bd3d27752b57042d_Out_1);


					float _Saturate_651b2833197e408da4206f4a2600421a_Out_1;
					Unity_Saturate_float(_Ceiling_5e36c3e6764f4fa9bd3d27752b57042d_Out_1, _Saturate_651b2833197e408da4206f4a2600421a_Out_1);


					float4 _Property_e172130f52144aeab83f49afef09bdbf_Out_0 = _BorderShadowColor;


					Bindings_ColorMul_37af7468366dbf74eb4a4406a991c4ad _ColorMul_0eb3696076b14924bd1211cb42b70cd8;
					float4 _ColorMul_0eb3696076b14924bd1211cb42b70cd8_OutVector4_1;
					SG_ColorMul_37af7468366dbf74eb4a4406a991c4ad(_Saturate_651b2833197e408da4206f4a2600421a_Out_1, _Property_e172130f52144aeab83f49afef09bdbf_Out_0, _ColorMul_0eb3696076b14924bd1211cb42b70cd8, _ColorMul_0eb3696076b14924bd1211cb42b70cd8_OutVector4_1);


					float _Property_92a4b7c8fdd44403b384465ae4edd797_Out_0 = _AntiAlias;


					float _Property_a12308f44210495eabffb85199d7f103_Out_0 = _BorderWidth;


					float _Subtract_d2489150687d48b2b4421296fffb9674_Out_2;
					Unity_Subtract_float(_Negate_51be37402e9548dcaa6d57dc8995eab5_Out_1, _Property_a12308f44210495eabffb85199d7f103_Out_0, _Subtract_d2489150687d48b2b4421296fffb9674_Out_2);


					Bindings_SDFView_49c002e44632b5b48a751fb2cd023151 _SDFView_b32c708188df4f53ae761864d7f0262a;
					float _SDFView_b32c708188df4f53ae761864d7f0262a_Out_0;
					SG_SDFView_49c002e44632b5b48a751fb2cd023151(_Property_92a4b7c8fdd44403b384465ae4edd797_Out_0, _Subtract_d2489150687d48b2b4421296fffb9674_Out_2, _Subtract_d2489150687d48b2b4421296fffb9674_Out_2, _SDFView_b32c708188df4f53ae761864d7f0262a, _SDFView_b32c708188df4f53ae761864d7f0262a_Out_0);


					float _Property_06671e9b33d942b4a970c190f06882a3_Out_0 = _BorderShadowFalloff;


					Bindings_SDFShadow_a024649aee42a0d4ea2a840d23a784ed _SDFShadow_150a762b7a704d82b2478324ff311ad3;
					float _SDFShadow_150a762b7a704d82b2478324ff311ad3_Mask_1;
					SG_SDFShadow_a024649aee42a0d4ea2a840d23a784ed(0, _Subtract_d2489150687d48b2b4421296fffb9674_Out_2, _Property_1325fcfa91644ffb856f92dc299bcd52_Out_0, _Property_06671e9b33d942b4a970c190f06882a3_Out_0, _SDFShadow_150a762b7a704d82b2478324ff311ad3, _SDFShadow_150a762b7a704d82b2478324ff311ad3_Mask_1);


					float _Minimum_79b075d2157e4b269646dda37b7d8708_Out_2;
					Unity_Minimum_float(_SDFView_b32c708188df4f53ae761864d7f0262a_Out_0, _SDFShadow_150a762b7a704d82b2478324ff311ad3_Mask_1, _Minimum_79b075d2157e4b269646dda37b7d8708_Out_2);


					float _Multiply_cdd233db79824c7f83d1ec91637d36cd_Out_2;
					Unity_Multiply_float(_Saturate_651b2833197e408da4206f4a2600421a_Out_1, _Minimum_79b075d2157e4b269646dda37b7d8708_Out_2, _Multiply_cdd233db79824c7f83d1ec91637d36cd_Out_2);


					float4 _Lerp_31d4f437e8454d4fb13bd46cb1cade72_Out_3;
					Unity_Lerp_float4(_Lerp_878619dc0c1141a9addb321f100c5a3d_Out_3, _ColorMul_0eb3696076b14924bd1211cb42b70cd8_OutVector4_1, (_Multiply_cdd233db79824c7f83d1ec91637d36cd_Out_2.xxxx), _Lerp_31d4f437e8454d4fb13bd46cb1cade72_Out_3);


					float4 _Multiply_9af9709282a249babf05f60fe81e58f6_Out_2;
					Unity_Multiply_float(_OverlayTextureOn_585958adf2344422a9604a8535fc4a2c_Out_0, _Lerp_31d4f437e8454d4fb13bd46cb1cade72_Out_3, _Multiply_9af9709282a249babf05f60fe81e58f6_Out_2);


					float _Split_511ae12449084f539fab859e302c1e35_R_1 = _OverlayTextureOn_585958adf2344422a9604a8535fc4a2c_Out_0[0];
					float _Split_511ae12449084f539fab859e302c1e35_G_2 = _OverlayTextureOn_585958adf2344422a9604a8535fc4a2c_Out_0[1];
					float _Split_511ae12449084f539fab859e302c1e35_B_3 = _OverlayTextureOn_585958adf2344422a9604a8535fc4a2c_Out_0[2];
					float _Split_511ae12449084f539fab859e302c1e35_A_4 = _OverlayTextureOn_585958adf2344422a9604a8535fc4a2c_Out_0[3];


					float _Split_c4d655e7432c48568c4dba11b32bf2aa_R_1 = _Lerp_b84e80a927af493f99f8c55ccf55f753_Out_3[0];
					float _Split_c4d655e7432c48568c4dba11b32bf2aa_G_2 = _Lerp_b84e80a927af493f99f8c55ccf55f753_Out_3[1];
					float _Split_c4d655e7432c48568c4dba11b32bf2aa_B_3 = _Lerp_b84e80a927af493f99f8c55ccf55f753_Out_3[2];
					float _Split_c4d655e7432c48568c4dba11b32bf2aa_A_4 = _Lerp_b84e80a927af493f99f8c55ccf55f753_Out_3[3];


					Bindings_SDFView_49c002e44632b5b48a751fb2cd023151 _SDFView_c634d0c8ff2f49568fa2ef842ebb1f43;
					float _SDFView_c634d0c8ff2f49568fa2ef842ebb1f43_Out_0;
					SG_SDFView_49c002e44632b5b48a751fb2cd023151(_Property_e12499eac2b647dca9c7419d7ca41407_Out_0, _Subtract_bde9f1c602314aebaab60872d59504cd_Out_2, _Subtract_bde9f1c602314aebaab60872d59504cd_Out_2, _SDFView_c634d0c8ff2f49568fa2ef842ebb1f43, _SDFView_c634d0c8ff2f49568fa2ef842ebb1f43_Out_0);


					float _OneMinus_a4f881856eb94564b4a13d7936160870_Out_1;
					Unity_OneMinus_float(_SDFView_c634d0c8ff2f49568fa2ef842ebb1f43_Out_0, _OneMinus_a4f881856eb94564b4a13d7936160870_Out_1);


					float _Minimum_ff5963a1fbf242ff8f7c9a3ea1d5c900_Out_2;
					Unity_Minimum_float(_Split_c4d655e7432c48568c4dba11b32bf2aa_A_4, _OneMinus_a4f881856eb94564b4a13d7936160870_Out_1, _Minimum_ff5963a1fbf242ff8f7c9a3ea1d5c900_Out_2);


					float _Minimum_8cc0274d92394a969b7bc13221edf093_Out_2;
					Unity_Minimum_float(_Split_511ae12449084f539fab859e302c1e35_A_4, _Minimum_ff5963a1fbf242ff8f7c9a3ea1d5c900_Out_2, _Minimum_8cc0274d92394a969b7bc13221edf093_Out_2);

					float alpha = _Minimum_8cc0274d92394a969b7bc13221edf093_Out_2;

					/*alpha *= UnityGet2DClipping(IN.vertex, _ClipRect);
#ifdef UNITY_UI_ALPHACLIP
					clip(alpha - 0.001);
#endif*/
					//return float4(IN.uv, 0, 1);
					return float4(_Multiply_9af9709282a249babf05f60fe81e58f6_Out_2.xyz, alpha);
				}
				ENDCG
			}

		}
			CustomEditor "Renge.PPB.ProceduralProgressBarGUI"
					FallBack "Diffuse"
}