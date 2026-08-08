## Run once per all valid allays

## Expects function enhanced_allays:common/pathfinding/tickstuck is run once every tick BEFORE this function is run.

## Expects valid allays to already have ea.validallay tag
## Expects targets to already have ea.target tag, and be .5 .5 .5 centered in the block

## Expects mx score in ea.pathfind scoreboard with MAX pathfind time
## -> scoreboard players set mx ea.pathfind 120
## Expects cd score in ea.pathfind scoreboard with COOLDOWN time
## -> scoreboard players set cd ea.pathfind 60
## Expects cs score in ea.pathfind scoreboard with CONSECUTIVE time addition once the target is reached
## -> scoreboard players set cs ea.pathfind 30

## Expects storage ea logic to have a int or string pointing to a function #enhanced_allays:pathfind_$(logic)
## -> data modify storage ea logic set value 1
## Expects storage ea forward to have a speed to tp the allays forwards in the direction they are currently looking
## -> data modify storage ea logic set value 0.25
## Expects storage ea turn to have a speed to tp the allays towards the target
## -> data modify storage ea logic set value 0.15

## Skip stuck/cooldown allays
execute if entity @s[tag=ea.stuck] run return 0

## Finds nearest available target
execute unless entity @n[tag=ea.selectedtarget] at @n[type=player,distance=..64] run tag @n[tag=ea.target,tag=!ea.taken] add ea.selectedtarget
tag @n[tag=ea.selectedtarget] add ea.taken

## Makes selectedtarget find nearest allay and make it pathfind
execute as @n[tag=ea.selectedtarget] at @s run function enhanced_allays:common/pathfinding/bring

## Clean up
tag @n[tag=ea.selectedtarget] remove ea.selectedtarget