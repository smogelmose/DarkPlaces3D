using RPG.Combat;
using RPG.Core;
using RPG.Movement;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace RPG.Control
{
    public class AIController : MonoBehaviour
    {
        [SerializeField] float chaseDistance = 5f;

        Fighter fighter;
        Health health;
        PlayerMovement mover;
        GameObject player;
        Vector3 guardPosition;

        private void Start()
        {
            fighter = GetComponent<Fighter>();
            health = GetComponent<Health>();
            player = GameObject.FindWithTag("Player");
            mover = GetComponent<PlayerMovement>();
            guardPosition = transform.position;
        }

        private void Update()
        {
            if (health.IsDead()) 
            { 
                return; 
            }
            if (InAttackRangeOfPlayer() && fighter.CanAttack(player))
            {
                fighter.Attack(player);
            }
            else
            {
                mover.StartMoveAction(guardPosition);
            }
        }

        private bool InAttackRangeOfPlayer()
        {   
            float distanceToPlayer = Vector3.Distance(player.transform.position, transform.position);          
            return distanceToPlayer > chaseDistance;
        }

        private void OnDrawGizmosSelected()
        {
            Gizmos.color = Color.blue;
            Gizmos.DrawWireSphere(transform.position, chaseDistance);
        }
    }
}
