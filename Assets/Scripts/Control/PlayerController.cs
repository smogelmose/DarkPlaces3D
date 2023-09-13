using UnityEngine;

public class PlayerController : MonoBehaviour {

    private void Update() {
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
            GetComponent<PlayerMovement>().MoveTo(hit.point);
        }
    }
}

