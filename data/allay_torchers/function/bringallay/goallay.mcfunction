scoreboard players remove @n[tag=allt.moveallay] allt.score 2
tag @s add allt.continue
execute as @n[tag=allt.moveallay] at @s unless entity @e[tag=allt.bringallay_oak,distance=..4] if score @s allt.score matches ..-140 run tag @s add allt.cooldown
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run tag @n[tag=allt.moveallay] add allt.stuck
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run data modify entity @n[tag=allt.moveallay] NoAI set value 0b
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run scoreboard players set @n[tag=allt.moveallay] allt.score 100
execute as @n[tag=allt.moveallay] if entity @s[tag=allt.cooldown] run tag @s remove allt.continue
tag @n[tag=allt.moveallay] remove allt.cooldown
execute if entity @s[tag=!allt.continue] run return 0
tag @s remove allt.continue


execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run tag @n[tag=allt.moveallay] add allt.stuck
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run data modify entity @n[tag=allt.moveallay] NoAI set value 0b
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run data modify entity @n[tag=allt.moveallay] Motion[1] set value 0.2d
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run scoreboard players set @n[tag=allt.moveallay] allt.score 40


tag @s add allt.allayb
execute positioned ~ ~.35 ~ run summon minecraft:marker ^ ^ ^0.25 {Tags:["allt.bringguide"]}
execute as @n[tag=allt.bringguide] at @s facing entity @n[tag=allt.bring] eyes run tp @s ~ ~ ~ ~ ~
execute as @n[tag=allt.bringguide] at @s run tp @s ^ ^ ^0.2

execute as @n[tag=allt.bringguide] at @s if entity @e[tag=allt.bring,distance=..1] run tag @n[tag=allt.moveallay] add allt.inplace
execute if entity @s[tag=allt.inplace] as @n[tag=allt.bringguide] at @s at @n[tag=allt.bring] run tp @n[tag=allt.moveallay] ~ ~-0.5 ~
execute if entity @s[tag=allt.inplace] run kill @n[tag=allt.bringguide]
execute if entity @s[tag=allt.inplace] at @s if function allay_torchers:bringallay/placetorch run tag @s add allt.success
execute if entity @s[tag=allt.success] on passengers if entity @s[tag=allt.torchstorer] run tag @s add allt.t
execute if entity @s[tag=allt.success] run scoreboard players remove @n[tag=allt.t] allt.score 1
execute if entity @s[tag=allt.success] if score @n[tag=allt.t] allt.score matches ..0 run tag @s remove allt.acthas
execute if entity @s[tag=allt.success] if score @n[tag=allt.t] allt.score matches ..0 run kill @n[tag=allt.t]
execute if entity @s[tag=allt.success] store result entity @n[tag=allt.t] data.Inventory.count int 1 run scoreboard players get @n[tag=allt.t] allt.score
execute if entity @s[tag=allt.success] run tag @n[tag=allt.t] remove allt.t
execute if entity @s[tag=allt.success] run tag @s remove allt.success 
execute if entity @s[tag=allt.inplace] run kill @n[tag=allt.bring]
execute if entity @s[tag=allt.inplace] run return 1

execute as @n[tag=allt.bringguide] at @s run tp @s ~ ~-.35 ~
execute as @n[tag=allt.bringguide] at @s run tp @s ~ ~.01 ~
execute at @s positioned ~ ~ ~ facing entity @n[tag=allt.bringguide] eyes run tp @s ~ ~ ~ ~ ~
execute as @n[tag=allt.bringguide] at @s run tp @s ~ ~-.01 ~

#execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run say stuck
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe positioned ~ ~0.2 ~ if function allay_torchers:bringallay/ispositionsafe run tp @s ~ ~ ~
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run tag @n[tag=allt.moveallay] add allt.stuck
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run data modify entity @n[tag=allt.moveallay] NoAI set value 0b
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run data modify entity @n[tag=allt.moveallay] Motion[1] set value 0.2d
execute as @n[tag=allt.bringguide] at @s unless function allay_torchers:bringallay/ispositionsafe run scoreboard players set @n[tag=allt.moveallay] allt.score 40

execute as @n[tag=allt.bringguide] at @s if function allay_torchers:bringallay/ispositionsafe run tp @n[tag=allt.moveallay] ~ ~ ~
execute as @n[tag=allt.bringguide] run kill @s