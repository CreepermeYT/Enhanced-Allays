#find players
$execute as @a[predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s add allayw.player
$execute as @a[predicate=allay_woodchoppers:offhand_$(tree)_log] run tag @s add allayw.player
$execute as @a[tag=allayw.player] at @s unless entity @n[type=allay,distance=..32,predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s remove allayw.player
#discard if no allays
execute unless entity @a[tag=allayw.player] run return 0

#add tags
$execute at @a[tag=allayw.player] as @e[type=allay,distance=..32,predicate=allay_woodchoppers:mainhand_$(tree)_log] run tag @s add allayw.haswood

execute as @e[tag=allayw.haswood,tag=allayw.stuck] if score @s allayw.delay matches 1.. run scoreboard players remove @s allayw.delay 1
execute as @e[tag=allayw.haswood,tag=allayw.stuck] if score @s allayw.delay matches 0 run tag @s remove allayw.stuck

#bring allays
$execute as @e[tag=allayw.bringallay_$(tree)] at @s run function allay_woodchoppers:bringallay/bringallay {tree:"$(tree)"}

#break and scan for new trees
$execute as @a[tag=allayw.player] at @s as @e[type=allay,distance=..32,tag=allayw.haswood] at @s run function allay_woodchoppers:as/asallays {tree:"$(tree)"}
tag @e[tag=allayw.alrrun] remove allayw.alrrun
tag @e[tag=allayw.foundwood] remove allayw.foundwood

#player scan for new trees
$execute as @a[tag=allayw.player] at @s positioned ~ ~1.6 ~ run function allay_woodchoppers:as/playerscan {tree:"$(tree)"}


#align bringallay markers
$execute as @e[tag=allayw.newb,tag=allayw.bringallay_$(tree)] at @s run function allay_woodchoppers:alignmarker/alignbringallay {tree:"$(tree)"}
$execute as @e[tag=allayw.newb,tag=allayw.bringallay_$(tree)] at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
$execute as @e[tag=allayw.newb,tag=allayw.bringallay_$(tree)] at @s if entity @e[tag=allayw.bringallay_$(tree),tag=!allayw.newb,distance=..1] run kill @s
$tag @e[tag=allayw.newb,tag=allayw.bringallay_$(tree)] remove allayw.newb

 #forget players with logs
tag @a remove allayw.player

#remove tag
tag @e[tag=allayw.haswood] remove allayw.haswood