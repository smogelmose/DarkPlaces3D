using UnityEditor;
using UnityEngine;

[CustomEditor(typeof(HHS))]
public class HHSEditor : Editor
{
    private Texture2D m_Logo;

    // Serialzed properties
    SerializedProperty m_NormalRate;
    SerializedProperty m_MaxRate;
    SerializedProperty m_ChangingSpeed;
    SerializedProperty m_RecoverySpeed;
    SerializedProperty m_RecoveryDelay;
    SerializedProperty m_Beat1;
    SerializedProperty m_Beat2;
    SerializedProperty m_MixerGroup;
    SerializedProperty m_VolumeCurve;
    SerializedProperty m_StopWhenMaxRate;
    SerializedProperty m_PlayOnStart;
    SerializedProperty m_OnStarted;
    SerializedProperty m_OnStopped;
    SerializedProperty m_OnMaxRateReached;
    SerializedProperty m_OnRateChanged;
    SerializedProperty m_OnFirstBeatPlayed;
    SerializedProperty m_OnSecondBeatPlayed;

    private GUIStyle m_HeaderStyle;
    private GUIStyle m_BoxStyle;

    private void OnEnable()
    {
        m_NormalRate = serializedObject.FindProperty("m_NormalRate");
        m_MaxRate = serializedObject.FindProperty("m_MaxRate");
        m_ChangingSpeed = serializedObject.FindProperty("m_ChangingSpeed");
        m_RecoverySpeed = serializedObject.FindProperty("m_RecoverySpeed");
        m_RecoveryDelay = serializedObject.FindProperty("m_RecoveryDelay");
        m_Beat1 = serializedObject.FindProperty("m_Beat1");
        m_Beat2 = serializedObject.FindProperty("m_Beat2");
        m_MixerGroup = serializedObject.FindProperty("m_MixerGroup");
        m_VolumeCurve = serializedObject.FindProperty("m_VolumeCurve");
        m_StopWhenMaxRate = serializedObject.FindProperty("m_StopWhenMaxRate");
        m_PlayOnStart = serializedObject.FindProperty("m_PlayOnStart");
        m_OnMaxRateReached = serializedObject.FindProperty("m_OnMaxRateReached");
        m_OnRateChanged = serializedObject.FindProperty("m_OnRateChanged");
        m_OnFirstBeatPlayed = serializedObject.FindProperty("m_OnFirstBeatPlayed");
        m_OnSecondBeatPlayed = serializedObject.FindProperty("m_OnSecondBeatPlayed");
        m_OnStarted = serializedObject.FindProperty("m_OnStarted");
        m_OnStopped = serializedObject.FindProperty("m_OnStopped");

        m_HeaderStyle = new GUIStyle()
        {
            alignment = TextAnchor.MiddleCenter,
            fontStyle = FontStyle.Bold,
            fontSize = 14
        };

        m_BoxStyle = new GUIStyle() { padding = new RectOffset(10,5,10,5) };
        m_Logo = Resources.Load<Texture2D>("HHSLogo");
    }

    public override void OnInspectorGUI()
    {
        serializedObject.Update();

        GUILayout.BeginVertical("box");
        GUILayout.BeginVertical(m_BoxStyle);

        EditorGUILayout.LabelField("HORROR HEARTBEAT SYSTEM", m_HeaderStyle);

        EditorGUILayout.Space();
        GUILayout.BeginHorizontal();
        GUILayout.FlexibleSpace();
        GUILayout.Label(m_Logo);
        GUILayout.FlexibleSpace();
        GUILayout.EndHorizontal();
        EditorGUILayout.Space();

        EditorGUILayout.IntSlider(m_NormalRate, 30, 100, new GUIContent("Normal rate"));
        EditorGUILayout.IntSlider(m_MaxRate, 120, 220, new GUIContent("Max rate"));
        EditorGUILayout.IntSlider(m_ChangingSpeed, 1, 20, new GUIContent("Changing speed"));
        EditorGUILayout.IntSlider(m_RecoverySpeed, 1, 20, new GUIContent("Recovery speed"));
        EditorGUILayout.IntSlider(m_RecoveryDelay, 0, 60, new GUIContent("Recovery delay"));

        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_Beat1);
        EditorGUILayout.PropertyField(m_Beat2);
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_MixerGroup);
        EditorGUILayout.CurveField(m_VolumeCurve, Color.green, Rect.zero);

        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_StopWhenMaxRate);
        EditorGUILayout.PropertyField(m_PlayOnStart);
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_OnStarted);
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_OnStopped);
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_OnMaxRateReached);
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_OnRateChanged);
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_OnFirstBeatPlayed);
        EditorGUILayout.Space();
        EditorGUILayout.PropertyField(m_OnSecondBeatPlayed);

        GUILayout.EndVertical();
        GUILayout.EndVertical();

        serializedObject.ApplyModifiedProperties();
    }
}