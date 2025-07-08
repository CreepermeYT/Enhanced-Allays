## find players
$execute as @a[predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s add allayw.player
$execute as @a[predicate=allay_woodchoppers:offhand_$(tree)_log] run tag @s add allayw.player
$execute as @a[tag=allayw.player] at @s unless entity @n[type=allay,distance=..32,predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s remove allayw.player
## discard if no allays
execute unless entity @a[tag=allayw.player] run return 0

## add tags
$execute at @a[tag=allayw.player] as @e[type=allay,distance=..48,predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s add allayw.haswood

## stuck timer
execute as @e[tag=allayw.haswood,tag=allayw.stuck] if score @s allayw.delay matches 1.. run scoreboard players remove @s allayw.delay 1
execute as @e[tag=allayw.haswood,tag=allayw.stuck] if score @s allayw.delay matches 0 run tag @s remove allayw.stuck

## bring allays
$execute as @e[tag=allayw.bringallay_$(tree)] at @s run function allay_woodchoppers:bringallay/particles {tree:"$(tree)"}
$execute as @e[tag=allayw.haswood,tag=!allayw.stuck] at @s run tag @n[tag=allayw.bringallay_$(tree),tag=!allayw.prefbringallay] add allayw.prefbringallay
$execute as @e[tag=allayw.bringallay_$(tree),tag=allayw.prefbringallay] at @s run function allay_woodchoppers:bringallay/bringallay {tree:"$(tree)"}
$execute as @e[type=item,predicate=allay_woodchoppers:sapling_$(tree)] at @s if block ~ ~-1 ~ #dirt run tag @s add allayw.sapling
execute as @e[tag=allayw.haswood,tag=!allayw.stuck,tag=!allayw.allayb] at @s run tag @n[tag=allayw.sapling,tag=!allayw.prefbringallay] add allayw.prefbringallay
execute as @e[tag=allayw.sapling,tag=allayw.prefbringallay] at @s run function allay_woodchoppers:bringallay/bringallay
tag @e[tag=allayw.prefbringallay] remove allayw.prefbringallay
tag @e[tag=allayw.sapling] remove allayw.sapling

## break and scan for new trees
$execute as @a[tag=allayw.player] at @s as @e[type=allay,distance=..48,tag=allayw.haswood] at @s run function allay_woodchoppers:as/asallays {tree:"$(tree)"}
tag @e[tag=allayw.alrrun] remove allayw.alrrun
tag @e[tag=allayw.foundwood] remove allayw.foundwood

## player scan for new trees
$execute as @a[tag=allayw.player] at @s anchored eyes positioned ^ ^ ^ run function allay_woodchoppers:as/playerscan {tree:"$(tree)"}

## align bringallay markers
$execute as @e[tag=allayw.newb,tag=allayw.bringallay_$(tree)] at @s run function allay_woodchoppers:alignmarker/alignbringallay {tree:"$(tree)"}
## move them down and delete if 2 in same spot
$execute as @e[tag=allayw.bringallay_$(tree)] at @s if block ~ ~-1 ~ $(tree)_log run tp @s ~ ~-1 ~
$execute as @e[tag=allayw.bringallay_$(tree)] at @s run function allay_woodchoppers:alignmarker/killmultiple {tree:"$(tree)"}

## forget players with logs
tag @a remove allayw.player

## remove tag
tag @e[tag=allayw.haswood] remove allayw.haswood