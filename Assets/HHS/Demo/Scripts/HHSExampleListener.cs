using UnityEngine;
using UnityEngine.UI;

public class HHSExampleListener : MonoBehaviour
{
    [SerializeField] 
    private RectTransform m_HeartIndicator = null;
    [SerializeField] 
    private Text m_HeartRateIndicator = null;
    [SerializeField] 
    private Image m_HeartbreakImage = null;

    private void Awake() 
    { 
        m_HeartbreakImage.enabled = false; 
    }

    public void FirstBeatReaction() 
    { 
        m_HeartIndicator.localScale = Vector3.one * 1.1f; 
    }

    public void SecondBeatReaction() 
    { 
        m_HeartIndicator.localScale = Vector3.one; 
    }

    public void UpdateRateIndicator(int rate) 
    { 
        m_HeartRateIndicator.text = rate.ToString(); 
    }

    public void Heartbreak() 
    { 
        m_HeartbreakImage.enabled = true; 
    }

    public void ResetHeartbreakImage() 
    { 
        m_HeartbreakImage.enabled = false; 
    }
}
