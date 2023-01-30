using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PlayerMovement : MonoBehaviour
{
    [SerializeField] Transform target;

    void Update()
    {
        if (Input.GetMouseButton(0))
        {
            MoveToPoint();
        }
    }
    
    private void MoveToPoint() 
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        bool hasHit = Physics.Raycast(ray, out hit);
        if (hasHit)
        {
            GetComponent<NavMeshAgent>().destination = hit.point;
        }
    }
}
