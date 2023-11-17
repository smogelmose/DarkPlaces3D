using UnityEngine;
using RPG.Movement;
using RPG.Core;

namespace RPG.Combat
{
    public class Fighter : MonoBehaviour, IAction
    {
        [SerializeField] float weaponRange = 2f;
        [SerializeField] float timeBetweenAttacks= 1f;
        [SerializeField] float weaponDamage = 5f;

        Transform target;
        float timeSinceLastAttack = 0;

        private void Update()
        {
            timeSinceLastAttack += Time.deltaTime;
            
            if (target == null) return;
            
            if (!GetIsInRange())
            {
                GetComponent<PlayerMovement>().MoveTo(target.position);
            }
            else
            {
                GetComponent<PlayerMovement>().Cancel();
                AttackBehaviour();
            }
        }

        private void AttackBehaviour()
        {
            if (timeSinceLastAttack > timeBetweenAttacks) 
            {
                // Triggers Hit() event
                GetComponent<Animator>().SetTrigger("attack");
                timeSinceLastAttack = 0;
                Health healthComponent = target.GetComponent<Health>();
                healthComponent.TakeDamage(weaponDamage);
            }
        }

        // Animation event
        void Hit()
        {
            //Health healthComponent = target.GetComponent<Health>();
            //healthComponent.TakeDamage(weaponDamage);
        }

        private bool GetIsInRange()
        {
            return Vector3.Distance(transform.position, target.position) < weaponRange;
        }

        public void Attack(CombatTarget combatTarget)
        {
            
            GetComponent<ActionScheduler>().StartAction(this);
            target = combatTarget.transform;
        }

        public void Cancel()
        {
            target = null;
        }     
    }
}


