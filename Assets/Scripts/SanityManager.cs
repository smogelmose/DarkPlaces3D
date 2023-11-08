using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Rendering.PostProcessing;
using UnityEngine.Events;

public class SanityManager : MonoBehaviour
{
    Slider sanitySlider;
    public PostProcessProfile profile;
    Vignette vignette;
    public int fullSanity;
    public int difficulty;
    float percent;

    public UnityEvent onInsane;

    // Start is called before the first frame update
    void Start()
    {
        profile.TryGetSettings(out vignette);
        sanitySlider = GetComponent<Slider>();
        sanitySlider.maxValue = fullSanity;
        sanitySlider.value = fullSanity;
        vignette.intensity.value = 0;

        StartCoroutine(LoseSanity());
    }

    IEnumerator LoseSanity()
    {
        while (sanitySlider.value > 0)
        {
            sanitySlider.value -= 2f * difficulty;
            float newValue = (sanitySlider.value - sanitySlider.maxValue) * -1;
            percent = newValue / sanitySlider.maxValue;
            vignette.intensity.value = percent;
            yield return null;
        }
        // Insane!
        onInsane.Invoke();
    }

    public void AffectSanity(float value)
    {
        sanitySlider.value += value;
    }

}
