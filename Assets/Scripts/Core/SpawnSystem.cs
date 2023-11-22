using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnSystem : MonoBehaviour
{
    public GameObject embalmFluid;

    public void embalmFluidSpawn()
    {
        int spawnPointX = Random.Range(-10, 10);
        int spawnPointY = Random.Range(10, 20);
        int spawnPointZ = Random.Range(-10, 10);

        Vector3 spawnPosition = new Vector3(spawnPointZ, spawnPointX, spawnPointY); 

        Instantiate(embalmFluid, spawnPosition, Quaternion.identity);
    }
}
