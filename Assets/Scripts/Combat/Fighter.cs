using UnityEngine;
using RPG.Movement;

namespace RPG.Combat
{
    public class Fighter : MonoBehaviour
    {
        [SerializeField] float weaponRange = 2f;
        
        Transform target;

        private void Update()
        {
            if (target == null) return;
            
            if (!GetIsInRange())
            {
                GetComponent<PlayerMovement>().MoveTo(target.position);
            }
            else
            {
                GetComponent<PlayerMovement>().Stop();
            }
        }

        private bool GetIsInRange()
        {
            return Vector3.Distance(transform.position, target.position) < weaponRange;
        }

        public void Attack(CombatTarget combatTarget)
        {
            target = combatTarget.transform;

            print("Attack!");
        }

        public void Cancel()
        {
            target = null;
        }
    }
}


