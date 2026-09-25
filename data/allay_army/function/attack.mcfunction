#if attack
##say attacked now stop
tag @s remove allayarmy.attacking
tag @n[tag=ea.selectedtarget] add allayarmy.dodamage
tag @s add allayarmy.adodamage
#tag @s add allayarmy.afterattack
execute at @s positioned ^ ^ ^1.5 unless entity @e[tag=ea.target,tag=!ea.selectedtarget,distance=..1.5] run tag @s add allayarmy.afterattack
execute if score @s ea.pathfind matches ..-80 run tag @s add allayarmy.afterattack
execute if entity @s[tag=allayarmy.afterattack] run scoreboard players set @s allayarmy.attackdelay 10
execute if entity @s[tag=allayarmy.afterattack] run scoreboard players set @s ea.pathfind 30
tag @n[tag=allayarmy.dodamage] remove allayarmy.attacked
tag @n[tag=allayarmy.dodamage] remove allayarmy.notattackedyet
execute at @s run tp @s ^ ^ ^-0.1
execute at @s as @n[tag=allayarmy.dodamage] if entity @s[type=creeper] at @s run damage @s 0.01 minecraft:player_attack at ^ ^ ^1
execute at @s if entity @s[predicate=allay_army:mainhand_netherite_sword] run damage @n[tag=allayarmy.dodamage] 8 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_diamond_sword] run damage @n[tag=allayarmy.dodamage] 7 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_iron_sword] run damage @n[tag=allayarmy.dodamage] 6 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_copper_sword] run damage @n[tag=allayarmy.dodamage] 5 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_stone_sword] run damage @n[tag=allayarmy.dodamage] 5 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_wooden_sword] run damage @n[tag=allayarmy.dodamage] 4 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_golden_sword] run damage @n[tag=allayarmy.dodamage] 4 minecraft:player_attack by @s
execute at @s run tp @s ^ ^ ^.1
execute if entity @s[tag=!allayarmy.afterattack] at @s run say combo
execute if entity @s[tag=!allayarmy.afterattack] at @s run tp @s ^ ^ ^.4
tag @n[tag=allayarmy.dodamage] remove allayarmy.dodamage
tag @s remove allayarmy.adodamage
return 1