execute if entity @s[tag=allayw.kill] run kill @s
$execute unless block ~ ~ ~ #allay_woodchoppers:$(tree) run tag @s add allayw.kill
execute unless entity @a[distance=..48] run kill @s

#particles
execute run particle minecraft:composter ~-.55 ~ ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~1 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~-.55 ~1.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~2 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~-.55 ~2.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~3 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~-.55 ~3.5 ~ 0 0.25 0.25 0 1 normal
execute run particle minecraft:composter ~.55 ~ ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~1 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~.55 ~1.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~2 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~.55 ~2.5 ~ 0 0.25 0.25 0 1 normal
$execute if block ~ ~3 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~.55 ~3.5 ~ 0 0.25 0.25 0 1 normal
execute run particle minecraft:composter ~ ~ ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~1 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~ ~1.5 ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~2 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~ ~2.5 ~-.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~3 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~ ~3.5 ~-.55 0.25 0.25 0 0 1 normal
execute run particle minecraft:composter ~ ~ ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~1 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~ ~1.5 ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~2 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~ ~2.5 ~.55 0.25 0.25 0 0 1 normal
$execute if block ~ ~3 ~ #allay_woodchoppers:$(tree) run particle minecraft:composter ~ ~3.5 ~.55 0.25 0.25 0 0 1 normal
execute run particle minecraft:composter ~ ~0.6 ~ 0.25 0 0.25 0 1 normal
execute run particle minecraft:composter ~ ~-0.6 ~ 0.25 0 0.25 0 1 normal