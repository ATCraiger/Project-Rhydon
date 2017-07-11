///This script takes two arguments, then calculates the damage done by the first argument to the second argument
//Argument 0 = Object dealing the damage
//Argument 1 = Object Receiving the damage

damageDealer = argument0;
damageTaker = argument1;

//Set up aim bonus
if(damageDealer.weaponAT == "Focused" || damageDealer.weaponAT == "Both") {
    if(damageDealer.hasBadAim)
        aimBonus = .9;
    else
        aimBonus = 1.1;
}
else
    aimBonus = 1;
//Set up Empowered Bonus
if(damageDealer.empoweredAttack)
    empoweredAttack = 1.5;
else
    empoweredAttack = 1;
    

//The math to take damage, after all calculations
damageToTake = (damageDealer.damageOut * aimBonus * empoweredAttack);
newHealth = damageTaker.currentHealth - damageToTake;
if(newHealth <= 0)
    damageTaker.currentHealth = 0;
else
    damageTaker.currentHealth = newHealth;
//show_message("dealt: " + string(damageToTake));
//return damageTaker.currentHealth;
