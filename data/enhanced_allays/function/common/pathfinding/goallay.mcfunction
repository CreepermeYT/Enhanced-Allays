## Run by ea.selectedallay, pathfinding logic

## Reduce pathfind timer
scoreboard players remove @s ea.pathfind 1

## temp tag to check max go time
tag @s add ea.continue
## MAX GO TIME HERE ->
scoreboard players set - ea.pathfind -1
scoreboard players operation mx ea.pathfind *= - ea.pathfind
execute if score @s ea.pathfind <= mx ea.pathfind at @s unless entity @e[tag=ea.selectedtarget,distance=..2] run tag @s remove ea.continue
scoreboard players operation mx ea.pathfind *= - ea.pathfind
execute if entity @s[tag=!ea.continue] run tag @s add ea.stuck
execute if entity @s[tag=!ea.continue] run data modify entity @s NoAI set value 0b
## COOLDOWN TIME HERE ->
execute if entity @s[tag=!ea.continue] store result score @s ea.pathfind run scoreboard players get cd ea.pathfind
execute if entity @s[tag=!ea.continue] run return 0
tag @s remove ea.continue

## MAX SPEED HERE & BELOW ->
function enhanced_allays:common/pathfinding/speed with storage ea

## IF <1 block away
tag @s add ea.notthereyet
execute as @n[tag=ea.selectedtarget] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:marker ~ ~ ~ {Tags:["ea.distcheck"]}
function enhanced_allays:common/pathfinding/dist with storage ea
kill @e[tag=ea.distcheck]
execute if entity @s[tag=!ea.notthereyet] as @n[tag=ea.selectedtarget] at @s anchored eyes positioned ^ ^ ^ run tp @n[tag=ea.selectedallay] ~ ~-.35 ~
execute if entity @s[tag=!ea.notthereyet] run kill @n[tag=ea.guide]

## RUN SPECIFIED LOGIC
execute if entity @s[tag=!ea.notthereyet] run function enhanced_allays:common/pathfinding/runlogic with storage ea
## If function returned 1 (success) then add time to the max time for consecutive pathfinding
execute if score sc ea.pathfind matches 1 run scoreboard players operation @s ea.pathfind += cs ea.pathfind
execute if score sc ea.pathfind matches 1 if score @s ea.pathfind matches 0.. run scoreboard players set @s ea.pathfind 0
scoreboard players reset sc ea.pathfind

## Finalize <1 block away logic
execute if entity @s[tag=!ea.notthereyet] run return 1
tag @s remove ea.notthereyet

## lower to allay's feet level
execute as @n[tag=ea.guide] at @s run tp @s ~ ~-.35 ~

## Try to avoid obstacles
execute as @n[tag=ea.guide] at @s anchored eyes positioned ^ ^ ^ rotated as @n[tag=ea.selectedallay] positioned ^ ^ ^ unless function enhanced_allays:common/pathfinding/checkposition run function enhanced_allays:common/pathfinding/avoid

## If failed to avoid, set Stuck
execute as @n[tag=ea.guide] at @s unless function enhanced_allays:common/pathfinding/checkposition run tag @n[tag=ea.selectedallay] add ea.stuck
execute if entity @s[tag=ea.stuck] run data modify entity @s NoAI set value 0b
execute if entity @s[tag=ea.stuck] run data modify entity @s Motion[1] set value 0.2d
## STUCK COOLDOWN HERE ->
execute if entity @s[tag=ea.stuck] store result score @s ea.pathfind run scoreboard players get cd ea.pathfind

## rotate
execute at @s positioned ~ ~ ~ facing entity @n[tag=ea.guide] eyes run tp @s ~ ~ ~ ~ ~

## move/tp
execute as @n[tag=ea.guide] at @s if function enhanced_allays:common/pathfinding/checkposition run tp @n[tag=ea.selectedallay] ~ ~ ~
execute as @n[tag=ea.guide] run kill @s