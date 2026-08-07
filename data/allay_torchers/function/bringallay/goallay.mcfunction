scoreboard players remove @n[tag=allt.moveallay] allt.score 2
tag @s add allt.continue
## MAX GO TIME HERE ->
execute as @n[tag=allt.moveallay] at @s unless entity @e[tag=allt.bringallay_oak,distance=..4] if score @s allt.score matches ..-120 run tag @s add allt.cooldown
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run tag @n[tag=allt.moveallay] add allt.stuck
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run data modify entity @n[tag=allt.moveallay] NoAI set value 0b
## IF MAX TIME REACHED THEN COOLDOWN TIME HERE ->
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run scoreboard players set @n[tag=allt.moveallay] allt.score 60
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run tag @s remove allt.continue
tag @n[tag=allt.moveallay] remove allt.cooldown
execute if entity @s[tag=!allt.continue] run return 0
tag @s remove allt.continue


tag @s add allt.allayb
## MAX SPEED HERE & BELOW ->
execute anchored eyes positioned ^ ^ ^ run summon minecraft:marker ^ ^ ^0.25 {Tags:["allt.bringguide"]}
execute as @n[tag=allt.bringguide] at @s facing entity @n[tag=allt.bring] eyes run tp @s ~ ~ ~ ~ ~
execute as @n[tag=allt.bringguide] at @s run tp @s ^ ^ ^0.15
## lower to feet level
execute as @n[tag=allt.bringguide] at @s run tp @s ~ ~-.35 ~

## IF <1 block away
execute as @n[tag=allt.bringguide] at @s if entity @e[tag=allt.bring,distance=...9] run tag @n[tag=allt.moveallay] add allt.inplace
execute if entity @s[tag=allt.inplace] as @n[tag=allt.bringguide] at @s at @n[tag=allt.bring] align xyz run tp @n[tag=allt.moveallay] ~.5 ~ ~.5
execute if entity @s[tag=allt.inplace] run kill @n[tag=allt.bringguide]
execute if entity @s[tag=allt.inplace] at @s positioned ~ ~ ~ if function allay_torchers:bringallay/placetorch run tag @s add allt.success
execute if entity @s[tag=allt.success] on passengers if entity @s[tag=allt.torchstorer] run tag @s add allt.t
execute if entity @s[tag=allt.success] run scoreboard players remove @n[tag=allt.t] allt.score 1
execute if entity @s[tag=allt.success] if score @n[tag=allt.t] allt.score matches ..0 run tag @s remove allt.acthas
execute if entity @s[tag=allt.success] if score @n[tag=allt.t] allt.score matches ..0 run kill @n[tag=allt.t]
execute if entity @s[tag=allt.success] store result entity @n[tag=allt.t] data.Inventory.count int 1 run scoreboard players get @n[tag=allt.t] allt.score
## ADDED MAX TIME IF SUCCESS HERE->
execute if entity @s[tag=allt.success] run scoreboard players add @n[tag=allt.moveallay] allt.score 30
execute if entity @s[tag=allt.success] if score @n[tag=allt.moveallay] allt.score matches 0.. run scoreboard players set @n[tag=allt.moveallay] allt.score 0
execute if entity @s[tag=allt.success] run tag @n[tag=allt.t] remove allt.t
execute if entity @s[tag=allt.success] run tag @s remove allt.success 
execute if entity @s[tag=allt.inplace] run kill @n[tag=allt.bring]
execute if entity @s[tag=allt.inplace] run return 1

## Try to avoid obstacles
execute as @n[tag=allt.bringguide] at @s anchored eyes positioned ^ ^ ^ rotated as @n[tag=allt.moveallay] positioned ^ ^ ^ unless function allay_torchers:bringallay/ispositionsafe run function allay_torchers:bringallay/avoid

execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run tag @n[tag=allt.moveallay] add allt.stuck
execute if entity @s[tag=allt.stuck] run data modify entity @s NoAI set value 0b
execute if entity @s[tag=allt.stuck] run data modify entity @s Motion[1] set value 0.2d
## STUCK COOLDOWN HERE ->
execute if entity @s[tag=allt.stuck] run scoreboard players set @s allt.score 60

## rotate
execute at @s positioned ~ ~ ~ facing entity @n[tag=allt.bringguide] eyes run tp @s ~ ~ ~ ~ ~

## move/tp
execute as @n[tag=allt.bringguide] at @s if function allay_torchers:bringallay/ispositionsafe run tp @n[tag=allt.moveallay] ~ ~ ~
execute as @n[tag=allt.bringguide] run kill @s