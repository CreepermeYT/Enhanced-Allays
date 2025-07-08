tag @s add allayw.allayb
execute positioned ~ ~.35 ~ run summon minecraft:marker ^ ^ ^0.25 {Tags:["allayw.bringguide"]}
execute as @n[tag=allayw.bringguide] at @s facing entity @n[tag=allayw.bring] eyes run tp @s ~ ~ ~ ~ ~
execute as @n[tag=allayw.bringguide] at @s run tp @s ^ ^ ^0.2

#execute as @n[tag=allayw.bringguide] at @s if entity @e[tag=allayw.bring,distance=..1.2] run say close
#execute as @n[tag=allayw.bringguide] at @s if entity @e[tag=allayw.bring,distance=..1.2] at @n[tag=allayw.bring] run tp @n[tag=allayw.moveallay] ~ ~ ~
#execute as @n[tag=allayw.bringguide] at @s if entity @e[tag=allayw.bring,distance=..1.2] run kill @n[tag=allayw.bringguide]

execute as @n[tag=allayw.bringguide] at @s run tp @s ~ ~-.35 ~
execute as @n[tag=allayw.bringguide] at @s run tp @s ~ ~.01 ~
execute at @s positioned ~ ~ ~ facing entity @n[tag=allayw.bringguide] eyes run tp @s ~ ~ ~ ~ ~
execute as @n[tag=allayw.bringguide] at @s run tp @s ~ ~-.01 ~

#execute as @n[tag=allayw.bringguide] at @s unless function allay_woodchoppers:bringallay/ispositionsafe run say stuck
execute as @n[tag=allayw.bringguide] at @s unless function allay_woodchoppers:bringallay/ispositionsafe positioned ~ ~0.2 ~ if function allay_woodchoppers:bringallay/ispositionsafe run tp @s ~ ~ ~
execute as @n[tag=allayw.bringguide] at @s unless function allay_woodchoppers:bringallay/ispositionsafe run tag @n[tag=allayw.moveallay] add allayw.stuck
execute as @n[tag=allayw.bringguide] at @s unless function allay_woodchoppers:bringallay/ispositionsafe run data modify entity @n[tag=allayw.moveallay] NoAI set value 0b
execute as @n[tag=allayw.bringguide] at @s unless function allay_woodchoppers:bringallay/ispositionsafe run data modify entity @n[tag=allayw.moveallay] Motion[1] set value 0.2d
execute as @n[tag=allayw.bringguide] at @s unless function allay_woodchoppers:bringallay/ispositionsafe run scoreboard players set @n[tag=allayw.moveallay] allayw.delay 40

execute as @n[tag=allayw.bringguide] at @s if function allay_woodchoppers:bringallay/ispositionsafe run tp @n[tag=allayw.moveallay] ~ ~ ~
execute as @n[tag=allayw.bringguide] run kill @s