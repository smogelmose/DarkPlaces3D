using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

namespace RPG.SceneManagement
{
    public class Portal : MonoBehaviour
    {
       [SerializeField] int sceneToLoad = -1;
       [SerializeField] Transform spawnPoint;

        private void OnTriggerEnter(Collider other)
        {
            if (other.tag == "Player")
            {
                StartCoroutine(Transition());
            }
        }

        private IEnumerator Transition()
        {
            DontDestroyOnLoad(gameObject);
            yield return SceneManager.LoadSceneAsync(sceneToLoad);
            Portal otherPortal = GetotherPortal();
            UpdatePlayer(otherPortal);
            Destroy(gameObject);
        }

        private static void UpdatePlayer(Portal otherPortal)
        {
            GameObject player = GameObject.FindWithTag("Player");
            player.transform.position = otherPortal.transform.position;
            player.transform.rotation = otherPortal.transform.rotation;
        }

        private Portal GetotherPortal()
        {
            foreach (Portal portal in FindObjectsOfType<Portal>())
            {
                if (portal == this) continue;

                return portal;
            }
                return null;
            }
        }
    }
