##execute if entity @s[tag=allayarmy.attacking] run say attacking by other allay
execute if entity @s[tag=allayarmy.attacking] run return 0 
execute as @n[predicate=allay_army:targetingplayer,tag=!allayarmy.nametagged,tag=!allayarmy.attacked,sort=nearest,distance=..12] at @s run function allay_army:tryattack
execute if entity @s[tag=allayarmy.attacking] run return 0
##say failed
scoreboard players set @s allayarmy.attackdelay 5
tag @s add allayarmy.attackdelay