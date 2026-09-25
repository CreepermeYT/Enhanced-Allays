#do after attack delay
execute as @e[type=allay,tag=allayarmy.attackdelay] run scoreboard players remove @s allayarmy.attackdelay 1
execute as @e[type=allay,tag=allayarmy.attackdelay,scores={allayarmy.attackdelay=..0}] run tag @s remove allayarmy.attackdelay

#do afterattack
execute as @e[type=allay,tag=allayarmy.afterattack] at @s run function allay_army:afterattack

# allays with sword -> check for close player -> find an available zombi to attack -> attack
#try to attack
## USE NEW COMMON PATHFINDING
scoreboard players set mx ea.pathfind 80
scoreboard players set cd ea.pathfind 15
scoreboard players set cs ea.pathfind -30
data modify storage ea logic set value "army"
data modify storage ea forward set value 0.35
data modify storage ea turn set value 0.26
## TAGGING ALLAYS
execute as @e[type=allay,tag=!allayarmy.attackdelay,tag=!allayarmy.attacking,tag=!allayarmy.afterattack] if entity @s[predicate=allay_army:mainhand_swords] at @s if entity @a[distance=..32] run tag @s add ea.validallay
## TAGGING TARGET MOBS
execute at @a if entity @e[type=allay,tag=ea.validallay,distance=..32] run tag @e[predicate=allay_army:targetingplayer,tag=!allayarmy.nametagged,distance=..16] add ea.target
## CALLING PATHFIND
execute as @e[type=allay,tag=ea.validallay] at @s run function enhanced_allays:common/pathfinding/nearest
tag @e[type=allay,tag=ea.validallay] remove ea.validallay
tag @e[tag=ea.target] remove ea.target
## OLD TAGGING
#execute as @e[type=allay,tag=!allayarmy.attackdelay,tag=!allayarmy.attacking,tag=!allayarmy.afterattack] if entity @s[predicate=allay_army:mainhand_swords] run tag @s add allayarmy.sword
#execute as @e[type=allay,tag=allayarmy.sword] at @s at @n[type=player,distance=..24] run function allay_army:attackwithsword
#execute as @e[type=allay,tag=allayarmy.sword] run tag @s remove allayarmy.sword
## OLD ATTACKING
#do attack
#tag @e[tag=allayarmy.attacked] add allayarmy.notattackedyet
#execute as @e[type=allay,tag=allayarmy.attacking] at @s run function allay_army:attack
#execute as @e[tag=allayarmy.notattackedyet] run say an attacked was leftover - error allay army
#execute as @e[tag=allayarmy.notattackedyet] run tag @s remove allayarmy.attacked
#execute as @e[tag=allayarmy.notattackedyet] run tag @s remove allayarmy.notattackedyet
