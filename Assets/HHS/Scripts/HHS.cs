using System;
using System.Collections;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.Events;

[DisallowMultipleComponent]
public class HHS : MonoBehaviour
{
    // ########## Settings ##########
    [SerializeField] private int                m_NormalRate            = 60;
    [SerializeField] private int                m_MaxRate               = 200;
    [SerializeField] private int                m_ChangingSpeed         = 3;
    [SerializeField] private int                m_RecoverySpeed         = 1;
    [SerializeField] private int                m_RecoveryDelay         = 10;
    [SerializeField] private bool               m_StopWhenMaxRate       = true;
    [SerializeField] private bool               m_PlayOnStart           = false;
    [SerializeField] private AudioClip          m_Beat1                 = null;
    [SerializeField] private AudioClip          m_Beat2                 = null;
    [SerializeField] private AudioMixerGroup    m_MixerGroup            = null;
    [SerializeField] private AnimationCurve     m_VolumeCurve           = null;

    [SerializeField] private UnityEvent         m_OnStarted             = null;
    [SerializeField] private UnityEvent         m_OnStopped             = null;
    [SerializeField] private UnityEvent         m_OnMaxRateReached      = null;
    [SerializeField] private UnityEvent         m_OnFirstBeatPlayed     = null;
    [SerializeField] private UnityEvent         m_OnSecondBeatPlayed    = null;
    [SerializeField] private UnityEventInt      m_OnRateChanged         = null;

    // ########## Private fields ########## 
    private AudioSource[]   m_AudioSources                  = new AudioSource[2];
    private Coroutine       m_HeartBeatIncreaseCoroutine    = null;
    private Coroutine       m_HeartbeatCoroutine            = null;
    private Coroutine       m_HeartBeatRecoveryCoroutine    = null;
    private int             m_TargetRate                    = 0;
    private int             m_CurrentRate                   = 0;
    private bool            m_IsPause                       = false;

    #region API
    /// <summary> Returns current heart rate </summary>
    public int GetCurrentHeartRate() 
    { 
        return m_CurrentRate; 
    }

    ///<summary> Enable heartbeat </summary>
    public void Enable() 
    { 
        StartHeartbeat(); 
    }

    /// <summary> Disable heartbeat and stop all processes </summary>
    public void Disable()
    {
        StopIncrease();
        StopRecovery();
        StopHeartbeat();
    }

    /// <summary> Mute heartbeat </summary>
    public void Mute() 
    {
        foreach (var source in m_AudioSources)
            source.mute = true;
    }

    /// <summary> Unmute heartbeat </summary>
    public void Unmute() 
    {
        foreach (var source in m_AudioSources)
            source.mute = false;
    }

    /// <summary> Pauses the heartbeat, increase and recovery stop </summary>
    public void Pause() 
    { 
        m_IsPause = true; 
    }

    /// <summary> Unpauses the heartbeat, increase and recovery resume </summary>
    public void Resume()
    {
        m_IsPause = false;
    }

    ///<summary> Changes the heart rate to passed value immediately </summary>
    public void SetHeartRateImmediately(int rate)
    {
        if (m_IsPause || m_CurrentRate == rate)
            return;

        StopRecovery();
        StopIncrease();
        SetCurrentRate(rate);
    }

    /// <summary> Increase the heart rate by passed value immediately </summary>
    public void ChangeHeartRateImmediatelyByValue(int value)
    {
        value += m_CurrentRate;
        SetHeartRateImmediately(value);
    }

    /// <summary> Changes the heart rate to passed value smoothly </summary>
    public void SetHeartRateSmoothly(int targetRate)
    {
        if (m_IsPause || m_CurrentRate == targetRate)
            return;

        StopRecovery();
        StopIncrease();
        SetTargetRate(targetRate);
        m_HeartBeatIncreaseCoroutine = StartCoroutine(HeartBeatIncreaseCoroutine());
    }

    /// <summary> Increase the heart rate by passed value smoothly </summary>
    public void ChangeHeartRateSmoothlyByValue(int rate)
    {
        if (m_HeartBeatIncreaseCoroutine == null)
            rate += m_CurrentRate;
        else
            rate += m_TargetRate;

        SetHeartRateSmoothly(rate);
    }
    #endregion

    #region Private metods
    private void SetCurrentRate(int rate) 
    {
        rate = Mathf.Clamp(rate, m_NormalRate, m_MaxRate);

        m_CurrentRate = rate;
        UpdateHeartBeatVolume();

        if (m_OnRateChanged != null)
            m_OnRateChanged.Invoke(m_CurrentRate);

        if (m_CurrentRate == m_MaxRate) 
        {
            if (m_OnMaxRateReached != null)
                m_OnMaxRateReached.Invoke();

            if (m_StopWhenMaxRate)
                Disable();
        }
    }
    private void SetTargetRate(int targetRate)
    {
        targetRate = Mathf.Clamp(targetRate, m_NormalRate, m_MaxRate);
        m_TargetRate = targetRate;
    }
    private IEnumerator HeartBeatIncreaseCoroutine()
    {
        while (Mathf.Abs(m_CurrentRate - m_TargetRate) > m_ChangingSpeed)
        {
            yield return new WaitForSecondsRealtime(1);

            while (m_IsPause)
                yield return null;

            SetCurrentRate(m_CurrentRate > m_TargetRate ? m_CurrentRate - m_ChangingSpeed : m_CurrentRate + m_ChangingSpeed);
        }

        if (m_CurrentRate != m_TargetRate)
        {
            yield return new WaitForSecondsRealtime(1);
            SetCurrentRate(m_TargetRate);
        }
        m_HeartBeatIncreaseCoroutine = null;
    }
    private IEnumerator HeartBeatCoroutine() 
    {
        while (true) 
        {
            while (m_IsPause)
                yield return null;

            if (m_CurrentRate > m_NormalRate &&
                m_HeartBeatRecoveryCoroutine == null &&
                m_HeartBeatIncreaseCoroutine == null)
                m_HeartBeatRecoveryCoroutine = StartCoroutine(HeartBeatRecoveryCoroutine());

            PlayFirstBeatSound();
            yield return new WaitForSeconds(GetSecondBeatDelay());
            PlaySecondBeatSound();
            yield return new WaitForSeconds(GetFirstBeatDelay());
        }
    }
    private IEnumerator HeartBeatRecoveryCoroutine()
    {
        float t = 0;
        while (t < m_RecoveryDelay)
        {
            while (m_IsPause)
                yield return null;

            t += Time.deltaTime;
            yield return null;
        }

        while (m_CurrentRate - m_RecoverySpeed >= m_NormalRate)
        {
            yield return new WaitForSeconds(1);

            while (m_IsPause)
                yield return null;

            SetCurrentRate(m_CurrentRate - m_RecoverySpeed);
        }

        if (m_CurrentRate != m_NormalRate)
        {
            yield return new WaitForSeconds(1);
            SetCurrentRate(m_NormalRate);
        }
        m_HeartBeatRecoveryCoroutine = null;
    }
    private void UpdateHeartBeatVolume()
    {
        var ratePercent = (m_CurrentRate - m_NormalRate) / (float)(m_MaxRate - m_NormalRate);
        var volume = Mathf.Clamp(m_VolumeCurve.Evaluate(ratePercent), 0, 1);

        foreach (var source in m_AudioSources)
            source.volume = volume;
    }
    private void StopRecovery() 
    {
        if (m_HeartBeatRecoveryCoroutine == null)
            return;

        StopCoroutine(m_HeartBeatRecoveryCoroutine);
        m_HeartBeatRecoveryCoroutine = null;
    }
    private void StopIncrease() 
    {
        if (m_HeartBeatIncreaseCoroutine == null)
            return;

        StopCoroutine(m_HeartBeatIncreaseCoroutine);
        m_HeartBeatIncreaseCoroutine = null;
    }
    private void StopHeartbeat()
    {
        m_IsPause = false; 

        if (m_HeartbeatCoroutine == null)
            return;

        StopCoroutine(m_HeartbeatCoroutine);
        m_HeartbeatCoroutine = null;

        if (m_OnStopped != null)
            m_OnStopped.Invoke();
    }
    private void StartHeartbeat() 
    {
        m_IsPause = false;

        if (m_HeartbeatCoroutine != null)
            return;

        SetCurrentRate(m_NormalRate);
        m_HeartbeatCoroutine = StartCoroutine(HeartBeatCoroutine());

        if (m_OnStarted != null)
            m_OnStarted.Invoke();
    }
    private void PlayFirstBeatSound()
    {
        m_AudioSources[0].PlayOneShot(m_Beat1);

        if (m_OnFirstBeatPlayed != null)
            m_OnFirstBeatPlayed.Invoke();
    }
    private void PlaySecondBeatSound() 
    { 
        m_AudioSources[1].PlayOneShot(m_Beat2);

        if (m_OnSecondBeatPlayed != null)
            m_OnSecondBeatPlayed.Invoke();
    }
    private float GetFirstBeatDelay()
    {
        return 60f / m_CurrentRate - GetSecondBeatDelay();
    }
    private float GetSecondBeatDelay()
    {
        return Mathf.Clamp((60f / m_CurrentRate) * 0.3f, 0.1f, 0.35f);
    }
    private void SetupAudioSources() 
    {
        var sourcesCount = 2;

        if (m_AudioSources.Length != sourcesCount)
            m_AudioSources = new AudioSource[sourcesCount];

        var existingSources = GetComponentsInChildren<AudioSource>();
        var lostSources = sourcesCount - existingSources.Length;

        for (int i = 0; i < lostSources; i++)
            gameObject.AddComponent<AudioSource>();

        for (int i = 0; i < m_AudioSources.Length; i++)
        {
            m_AudioSources[i] = GetComponentsInChildren<AudioSource>()[i];
            m_AudioSources[i].enabled = true;
            m_AudioSources[i].playOnAwake = false;
            m_AudioSources[i].loop = false;

            if (m_MixerGroup != null)
                m_AudioSources[i].outputAudioMixerGroup = m_MixerGroup;
            else
                m_AudioSources[i].outputAudioMixerGroup = null;
        }
    }
    private void OnValidate()
    {
        SetupAudioSources();
    }
    private void Awake()
    {
        SetupAudioSources();
    }
    private void Start() 
    {
        if (m_PlayOnStart)
            Enable();
    }
    #endregion
}

[Serializable]
public class UnityEventInt : UnityEvent<int> { }