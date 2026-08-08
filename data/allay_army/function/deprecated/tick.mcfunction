#do after attack delay
execute as @e[type=allay,tag=allayarmy.attackdelay] run scoreboard players remove @s allayarmy.attackdelay 1
execute as @e[type=allay,tag=allayarmy.attackdelay,scores={allayarmy.attackdelay=..0}] run tag @s remove allayarmy.attackdelay


# allays with sword -> check for close player -> find an available zombi to attack -> attack
#try to attack
execute as @e[type=allay,tag=!allayarmy.attackdelay,tag=!allayarmy.attacking,tag=!allayarmy.afterattack] if entity @s[predicate=allay_army:mainhand_swords] run tag @s add allayarmy.sword
execute as @e[type=allay,tag=allayarmy.sword] at @s at @n[type=player,distance=..24] run function allay_army:attackwithsword
execute as @e[type=allay,tag=allayarmy.sword] run tag @s remove allayarmy.sword

#do attack
tag @e[tag=allayarmy.attacked] add allayarmy.notattackedyet
execute as @e[type=allay,tag=allayarmy.attacking] at @s run function allay_army:attack
#execute as @e[tag=allayarmy.notattackedyet] run say an attacked was leftover - error allay army
execute as @e[tag=allayarmy.notattackedyet] run tag @s remove allayarmy.attacked
execute as @e[tag=allayarmy.notattackedyet] run tag @s remove allayarmy.notattackedyet

#do afterattack
execute as @e[type=allay,tag=allayarmy.afterattack] at @s run function allay_army:afterattack


