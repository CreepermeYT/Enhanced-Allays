#find the log and tp to it
$execute if entity @s[tag=!allayw.longrange] run function allay_woodchoppers:alignmarker/findlog {tree:"$(tree)"}

$execute if entity @s[tag=allayw.longrange] run function allay_woodchoppers:alignmarker/findloglr {tree:"$(tree)"}

#verify this is a tree
$execute at @s run function allay_woodchoppers:alignmarker/checkleaves {tree:"$(tree)"}
execute if entity @s[tag=!hasleaves] run kill @s
execute unless entity @s[tag=hasleaves] run return 0
tag @s remove hasleaves

#go to the bottom of it
$execute at @s if block ~ ~-1 ~ #allay_woodchoppers:$(tree) run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ #allay_woodchoppers:$(tree) run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ #allay_woodchoppers:$(tree) run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ #allay_woodchoppers:$(tree) run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ #allay_woodchoppers:$(tree) run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ #allay_woodchoppers:$(tree) run tp @s ~ ~-1 ~

execute at @s align xyz run tp @s ~0.5 ~0.5 ~0.5
tag @s remove allayw.newb
tag @s remove allayw.longrange

$execute at @s run function allay_woodchoppers:alignmarker/killmultiple {tree:"$(tree)"}
