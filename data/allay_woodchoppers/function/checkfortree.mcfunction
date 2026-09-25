## find players
$execute as @a[predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s add allayw.player
$execute as @a[predicate=allay_woodchoppers:offhand_$(tree)_log] run tag @s add allayw.player
$execute as @a[tag=allayw.player] at @s unless entity @n[type=allay,distance=..48,predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s remove allayw.player
## discard if no allays
execute unless entity @a[tag=allayw.player] run return 0

## add tags
$execute at @a[tag=allayw.player] as @e[type=allay,distance=..48,predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s add allayw.haswood

## stuck timer
execute as @e[type=allay,tag=allayw.haswood,tag=allayw.stuck] if score @s allayw.delay matches 1.. run scoreboard players remove @s allayw.delay 1
execute as @e[type=allay,tag=allayw.haswood,tag=allayw.stuck] if score @s allayw.delay matches 0 run tag @s remove allayw.stuck

## bring allays
$execute as @e[type=marker,tag=allayw.bringallay_$(tree)] at @s run function allay_woodchoppers:bringallay/particles {tree:"$(tree)"}

## USE NEW COMMON PATHFINDING
scoreboard players set mx ea.pathfind 400
scoreboard players set cd ea.pathfind 300
scoreboard players set cs ea.pathfind 0
data modify storage ea logic set value "woodchoppers"
data modify storage ea forward set value 0.21
data modify storage ea turn set value 0.14
data modify storage ea dist set value 0.2
## TAGGING ALLAYS
tag @e[type=allay,tag=allayw.haswood] add ea.validallay
## TAGGING LOG TARGETS
$tag @e[type=marker,tag=allayw.bringallay_$(tree)] add ea.target
## CALLING PATHFIND
execute as @e[type=allay,tag=ea.validallay] at @s run function enhanced_allays:common/pathfinding/nearest
tag @e[type=allay,tag=ea.pathfinding,tag=ea.validallay] remove ea.validallay
tag @e[type=marker,tag=ea.target] remove ea.target
## TAGGING SAPLINGS
$execute at @a[tag=allayw.player] as @e[type=item,predicate=allay_woodchoppers:sapling_$(tree),distance=..48] at @s if block ~ ~-1 ~ #allay_woodchoppers:sapling_placeable run tag @s add ea.target
## CALLING PATHFIND for saplings
execute as @e[type=allay,tag=!ea.taken,tag=ea.validallay] at @s run function enhanced_allays:common/pathfinding/nearest
tag @e[type=allay,tag=ea.validallay] remove ea.validallay
tag @e[type=item,tag=ea.target] remove ea.target

## OLD TAGGING & PATHFINDING
#$execute as @e[tag=allayw.haswood,tag=!allayw.stuck] at @s run tag @n[tag=allayw.bringallay_$(tree),tag=!allayw.prefbringallay] add allayw.prefbringallay
#$execute as @e[tag=allayw.bringallay_$(tree),tag=allayw.prefbringallay] at @s run function allay_woodchoppers:bringallay/bringallay {tree:"$(tree)"}
#$execute at @a[tag=allayw.player] as @e[type=item,predicate=allay_woodchoppers:sapling_$(tree),distance=..32] at @s if block ~ ~-1 ~ #allay_woodchoppers:sapling_placeable run tag @s add allayw.sapling
#execute as @e[tag=allayw.haswood,tag=!allayw.stuck,tag=!allayw.allayb] at @s run tag @n[tag=allayw.sapling,tag=!allayw.prefbringallay] add allayw.prefbringallay
#execute as @e[tag=allayw.sapling,tag=allayw.prefbringallay] at @s run function allay_woodchoppers:bringallay/bringallay
#tag @e[tag=allayw.prefbringallay] remove allayw.prefbringallay
#tag @e[tag=allayw.sapling] remove allayw.sapling

## break and scan for new trees
$execute as @a[tag=allayw.player] at @s as @e[type=allay,distance=..48,tag=allayw.haswood] at @s run function allay_woodchoppers:as/asallays {tree:"$(tree)"}
tag @e[type=allay,tag=allayw.alrrun] remove allayw.alrrun
tag @e[type=allay,tag=allayw.foundwood] remove allayw.foundwood

## player scan for new trees
$execute as @a[tag=allayw.player] at @s anchored eyes positioned ^ ^ ^ run function allay_woodchoppers:as/playerscan {tree:"$(tree)"}

## align bringallay markers
$execute as @e[type=marker,tag=allayw.newb,tag=allayw.bringallay_$(tree)] at @s run function allay_woodchoppers:alignmarker/alignbringallay {tree:"$(tree)"}
## move them down
$execute as @e[type=marker,tag=allayw.bringallay_$(tree)] at @s if block ~ ~-1 ~ $(tree)_log run tp @s ~ ~-1 ~

## forget players with logs
tag @a remove allayw.player

## remove tag
tag @e[type=allay,tag=allayw.haswood] remove allayw.haswood