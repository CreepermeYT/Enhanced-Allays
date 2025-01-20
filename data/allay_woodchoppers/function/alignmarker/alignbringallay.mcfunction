#find the log and tp to it
$execute if entity @s[tag=!allayw.longrange] run function allay_woodchoppers:alignmarker/findlog {tree:"$(tree)"}

$execute if entity @s[tag=allayw.longrange] run function allay_woodchoppers:alignmarker/findloglr {tree:"$(tree)"}

#go to the bottom of it
$execute at @s if block ~ ~-1 ~ $(tree)_log run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ $(tree)_log run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ $(tree)_log run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ $(tree)_log run tp @s ~ ~-1 ~
$execute at @s if block ~ ~-1 ~ $(tree)_log run tp @s ~ ~-1 ~

