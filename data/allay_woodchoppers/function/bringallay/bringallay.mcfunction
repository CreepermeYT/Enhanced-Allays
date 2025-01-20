$execute unless block ~ ~ ~ $(tree)_log run kill @s
execute unless entity @a[distance=..32] run kill @s

#particles
execute run particle minecraft:composter ~-.55 ~ ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~-.55 ~1.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~-.55 ~2.5 ~ 0 0.25 0.25 0 1 normal
execute run particle minecraft:composter ~.55 ~ ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~.55 ~1.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~.55 ~2.5 ~ 0 0.25 0.25 0 1 normal
execute run particle minecraft:composter ~ ~ ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~ ~1.5 ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~ ~2.5 ~-.55 0.25 0.25 0 0 1 normal
execute run particle minecraft:composter ~ ~ ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~ ~1.5 ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~ ~2.5 ~.55 0.25 0.25 0 0 1 normal
execute run particle minecraft:composter ~ ~0.6 ~ 0.25 0 0.25 0 1 normal
execute run particle minecraft:composter ~ ~-0.6 ~ 0.25 0 0.25 0 1 normal

 #bring allay
tag @s add allayw.bring
execute as @n[type=allay,tag=allayw.haswood,tag=!allayw.allayb,tag=!allayw.stuck,distance=..64] run tag @s add allayw.moveallay
execute as @n[tag=allayw.moveallay] at @s run data modify entity @s NoAI set value 1b
execute as @n[tag=allayw.moveallay] at @s run function allay_woodchoppers:bringallay/goallay
tag @n[tag=allayw.moveallay] remove allayw.moveallay
tag @s remove allayw.bring