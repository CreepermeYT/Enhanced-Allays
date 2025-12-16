# avoid NoAI allays
execute as @e[tag=allt.allayb] run data modify entity @s NoAI set value 0b
tag @e[tag=allt.allayb] remove allt.allayb

## add tags
execute at @a as @e[type=minecraft:allay,predicate=allay_torchers:mainhand_torch,distance=..32] at @s run tag @s[tag=!allt.disabled] add allt.has

## kill stranded torch storers if allays die
execute as @e[tag=allt.torchstorer] on vehicle on passengers run tag @s add allt.stay
execute as @e[tag=allt.torchstorer,tag=!allt.stay] at @s run function allay_torchers:torchstoring/kill
tag @e[tag=allt.torchstorer] remove allt.stay
## handle stranded torch storers when allays do not have torches anymore
execute as @e[tag=allt.acthas,tag=!allt.has] at @s if entity @a[distance=..32] run function allay_torchers:torchstoring/disable
execute as @e[tag=allt.acthas,tag=allt.disabled] if entity @s[nbt={Inventory:[]}] at @s run function allay_torchers:torchstoring/finalize

## do torch storers
execute as @e[tag=allt.has] unless entity @s[nbt={Inventory:[]}] at @s run function allay_torchers:torchstoring/onmore
## particle allays with no torches
execute as @e[tag=allt.has,tag=!allt.acthas] at @s run particle dust{color:[1.0,0.3,0.0],scale:.5} ~ ~1 ~ 0.05 0.05 0.05 0 1 normal

## stuck timer
execute as @e[tag=allt.has,tag=allt.stuck] if score @s allt.score matches 1.. run scoreboard players remove @s allt.score 1
execute as @e[tag=allt.has,tag=allt.stuck] if score @s allt.score matches 0 run tag @s remove allt.stuck

## bring allays to known positions
execute as @e[tag=allt.has,tag=allt.acthas] at @s run function allay_torchers:bringallay/nearest
## place particles
execute as @e[tag=allt.place] at @s unless entity @a[distance=..32] run kill @s
execute as @e[tag=allt.place] at @s unless entity @e[tag=allt.has,distance=..32] run kill @s
execute as @e[tag=allt.place] at @s run particle dust{color:[1.0,1.0,0.45],scale:.5} ~ ~-0.1 ~ 0.05 0.2 0.05 0 2 normal

## search new position
execute as @e[tag=allt.has] unless entity @s[tag=allt.allayb] at @s run function allay_torchers:positionfinding/search
execute as @a at @s if entity @e[tag=allt.has,distance=..32] anchored eyes positioned ^ ^ ^ run function allay_torchers:positionfinding/search

## remove tags
tag @e[tag=allt.has] remove allt.has
tag @e[tag=allt.taken] remove allt.taken
