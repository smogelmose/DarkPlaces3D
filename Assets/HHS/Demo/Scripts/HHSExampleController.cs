using UnityEngine;
using UnityEngine.UI;

public class HHSExampleController : MonoBehaviour
{
    [SerializeField] private HHS m_HeartbeatSystem = null;
    [SerializeField] private InputField m_RateFieldImmediately = null;
    [SerializeField] private InputField m_RateFieldImmediatelyByValue = null;
    [SerializeField] private InputField m_RateFieldSmoothly = null;
    [SerializeField] private InputField m_RateFieldSmoothlyByValue = null;

    public void StartSystem() 
    { 
        m_HeartbeatSystem.Enable(); 
    }

    public void StopSystem()
    {
        m_HeartbeatSystem.Disable();
    }

    public void PauseSystem()
    {
        m_HeartbeatSystem.Pause();
    }

    public void ResumeSystem()
    {
        m_HeartbeatSystem.Resume();
    }

    public void MuteSystem()
    {
        m_HeartbeatSystem.Mute();
    }

    public void UnmuteSystem()
    {
        m_HeartbeatSystem.Unmute();
    }

    public void SetHeartRateImmediately()
    {
        m_HeartbeatSystem.SetHeartRateImmediately(int.Parse(m_RateFieldImmediately.text));
    }

    public void ChangeHeartRateImmediately()
    {
        m_HeartbeatSystem.ChangeHeartRateImmediatelyByValue(int.Parse(m_RateFieldImmediatelyByValue.text));
    }

    public void SetHeartRateSmoothly()
    {
        m_HeartbeatSystem.SetHeartRateSmoothly(int.Parse(m_RateFieldSmoothly.text));
    }

    public void ChangeHeartRateSmoothly()
    {
        m_HeartbeatSystem.ChangeHeartRateSmoothlyByValue(int.Parse(m_RateFieldSmoothlyByValue.text));
    }
}