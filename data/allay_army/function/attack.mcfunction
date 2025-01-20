#attack timeout
scoreboard players remove @s allayarmy.attackdelay 1
#if attack timeout ran out, stop attacking
execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @s remove allayarmy.attacking
execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @n[tag=allayarmy.notattackedyet] remove allayarmy.attacked
execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @n[tag=allayarmy.notattackedyet] remove allayarmy.notattackedyet
execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @s add allayarmy.attackdelay
execute if entity @s[scores={allayarmy.attackdelay=..0}] run scoreboard players set @s allayarmy.attackdelay 80
##execute if entity @s[scores={allayarmy.attackdelay=80}] run say ran out time
execute if entity @s[scores={allayarmy.attackdelay=80}] run return 0
#if no attacked mob nearby, stop attacking
execute unless entity @n[tag=allayarmy.notattackedyet,distance=..64] run tag @s remove allayarmy.attacking
execute unless entity @n[tag=allayarmy.notattackedyet,distance=..64] run tag @s add allayarmy.afterattack
execute unless entity @n[tag=allayarmy.notattackedyet,distance=..64] run scoreboard players set @s allayarmy.attackdelay 15
execute unless entity @n[tag=allayarmy.notattackedyet,distance=..64] run return 0

execute at @n[tag=allayarmy.notattackedyet] run particle minecraft:raid_omen ~ ~1 ~ 0.2 0.2 0.2 0 1

#marker movement and penalize
tag @s add allayarmy.moveallay
execute positioned ~ ~.35 ~ run summon minecraft:marker ^ ^ ^0.35 {Tags:["allayarmy.attackguide"]}
execute as @n[tag=allayarmy.attackguide] at @s facing entity @n[tag=allayarmy.notattackedyet] eyes run tp @s ~ ~ ~ ~ ~
execute as @n[tag=allayarmy.attackguide] at @s run tp @s ^ ^ ^0.26
execute as @n[tag=allayarmy.attackguide] at @s run tp @s ~ ~-.35 ~
##execute as @n[tag=allayarmy.attackguide] at @s unless function allay_army:ispositionsafe as @n[tag=allayarmy.moveallay] run say penalized
execute as @n[tag=allayarmy.attackguide] at @s unless function allay_army:ispositionsafe as @n[tag=allayarmy.moveallay] run scoreboard players remove @s allayarmy.attackdelay 10
execute as @n[tag=allayarmy.attackguide] at @s run tp @s ~ ~-.05 ~
execute at @s facing entity @n[tag=allayarmy.attackguide] eyes run tp @s ~ ~ ~ ~ ~
execute as @n[tag=allayarmy.attackguide] at @s run tp @s ~ ~.05 ~
execute as @n[tag=allayarmy.attackguide] at @s if function allay_army:ispositionsafe run tp @n[tag=allayarmy.moveallay] ~ ~ ~
execute as @n[tag=allayarmy.attackguide] run kill @s
tag @s remove allayarmy.moveallay

#tag both if close to do attack
tag @s add allayarmy.checkattack
##execute as @n[tag=allayarmy.notattackedyet] at @s anchored eyes positioned ^ ^ ^ if entity @n[tag=allayarmy.checkattack,distance=...5] run say close to attack
execute as @n[tag=allayarmy.notattackedyet] at @s anchored eyes positioned ^ ^ ^ if entity @n[tag=allayarmy.checkattack,distance=...5] run tag @n[tag=allayarmy.checkattack,distance=...5] add allayarmy.adodamage
execute as @n[tag=allayarmy.notattackedyet] at @s anchored eyes positioned ^ ^ ^ if entity @n[tag=allayarmy.checkattack,distance=...5] run tag @s add allayarmy.dodamage
tag @s remove allayarmy.checkattack

#exit if no attack
execute if entity @s[tag=!allayarmy.adodamage] at @s run tag @n[tag=allayarmy.notattackedyet] remove allayarmy.notattackedyet
execute if entity @s[tag=!allayarmy.adodamage] run return 0

#if attack
##say attacked now stop
tag @s remove allayarmy.attacking
tag @s add allayarmy.afterattack
scoreboard players set @s allayarmy.attackdelay 10
tag @n[tag=allayarmy.dodamage] remove allayarmy.attacked
tag @n[tag=allayarmy.dodamage] remove allayarmy.notattackedyet
execute at @s if entity @s[predicate=allay_army:mainhand_netherite_sword] run damage @n[tag=allayarmy.dodamage] 8 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_diamond_sword] run damage @n[tag=allayarmy.dodamage] 7 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_iron_sword] run damage @n[tag=allayarmy.dodamage] 6 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_stone_sword] run damage @n[tag=allayarmy.dodamage] 5 minecraft:player_attack by @s
execute at @s if entity @s[predicate=allay_army:mainhand_wooden_sword] run damage @n[tag=allayarmy.dodamage] 4 minecraft:player_attack by @s
tag @n[tag=allayarmy.dodamage] remove allayarmy.dodamage
tag @s remove allayarmy.adodamage

