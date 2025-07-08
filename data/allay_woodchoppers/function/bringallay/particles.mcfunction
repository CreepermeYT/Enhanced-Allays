$execute unless block ~ ~ ~ $(tree)_log run kill @s
execute unless entity @a[distance=..48] run kill @s

#particles
execute run particle minecraft:composter ~-.55 ~ ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~-.55 ~1.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~-.55 ~2.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~3 ~ $(tree)_log run particle minecraft:composter ~-.55 ~3.5 ~ 0 0.25 0.25 0 1 normal
execute run particle minecraft:composter ~.55 ~ ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~.55 ~1.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~.55 ~2.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~3 ~ $(tree)_log run particle minecraft:composter ~.55 ~3.5 ~ 0 0.25 0.25 0 1 normal
execute run particle minecraft:composter ~ ~ ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~ ~1.5 ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~ ~2.5 ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~3 ~ $(tree)_log run particle minecraft:composter ~ ~3.5 ~-.55 0.25 0.25 0 0 1 normal
execute run particle minecraft:composter ~ ~ ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~1 ~ $(tree)_log run particle minecraft:composter ~ ~1.5 ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~2 ~ $(tree)_log run particle minecraft:composter ~ ~2.5 ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~3 ~ $(tree)_log run particle minecraft:composter ~ ~3.5 ~.55 0.25 0.25 0 0 1 normal
execute run particle minecraft:composter ~ ~0.6 ~ 0.25 0 0.25 0 1 normal
execute run particle minecraft:composter ~ ~-0.6 ~ 0.25 0 0.25 0 1 normal