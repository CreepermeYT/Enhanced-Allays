##in case two players invoke the same allay
execute if entity @s[tag=allayw.alrrun] run return 0
tag @s add allayw.alrrun

execute if score @s allayw.delay matches ..-1 run scoreboard players add @s allayw.delay 1

#$say in theory breaking for $(tree)
$execute if block ~0.34 ~.34 ~0.34 $(tree)_log run setblock ~0.34 ~.34 ~0.34 air destroy
$execute if block ~0.34 ~.34 ~-0.34 $(tree)_log run setblock ~0.34 ~.34 ~-0.34 air destroy
$execute if block ~-0.34 ~.34 ~-0.34 $(tree)_log run setblock ~-0.34 ~.34 ~-0.34 air destroy
$execute if block ~-0.34 ~.34 ~0.34 $(tree)_log run setblock ~-0.34 ~.34 ~0.34 air destroy
$execute if block ~0.34 ~.4 ~0.34 $(tree)_log run setblock ~0.34 ~.4 ~0.34 air destroy
$execute if block ~0.34 ~.4 ~-0.34 $(tree)_log run setblock ~0.34 ~.4 ~-0.34 air destroy
$execute if block ~-0.34 ~.4 ~-0.34 $(tree)_log run setblock ~-0.34 ~.4 ~-0.34 air destroy
$execute if block ~-0.34 ~.4 ~0.34 $(tree)_log run setblock ~-0.34 ~.4 ~0.34 air destroy


#plant sapplings
$execute as @n[type=item,predicate=allay_woodchoppers:sapling_$(tree),distance=..2] at @s if block ~ ~-1 ~ #allay_woodchoppers:sapling_placeable run tag @s add allayw.sap
tag @s add mangrove_sapling
$execute unless entity @s[tag=$(tree)_sapling] as @n[tag=allayw.sap] at @s run function allay_woodchoppers:as/placesapling {tree:"$(tree)"}
tag @s remove mangrove_sapling
execute as @n[tag=allayw.sap] at @s run playsound minecraft:block.grass.place block @a[distance=..16] ~ ~ ~
execute as @n[tag=allayw.sap] run item modify entity @s contents allay_woodchoppers:reduce
tag @n[tag=allayw.sap] remove allayw.sap

#scan for new trees
$execute positioned ~ ~-1 ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~-1 ~ {CustomName:'"allay_woodchoppers:$(tree)_log marker"',Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
tag @s remove allayw.foundwood

$execute positioned ~ ~ ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~ ~ {CustomName:'"allay_woodchoppers:$(tree)_log marker"',Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
tag @s remove allayw.foundwood

$execute positioned ~ ~2 ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~2 ~ {CustomName:'"allay_woodchoppers:$(tree)_log marker"',Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
tag @s remove allayw.foundwood

$execute positioned ~ ~1 ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~1 ~ {CustomName:'"allay_woodchoppers:$(tree)_log marker"',Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
tag @s remove allayw.foundwood

$execute positioned ~ ~ ~ if predicate allay_woodchoppers:scanlongrange_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say longrange
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~ ~ {CustomName:'"allay_woodchoppers:$(tree)_log marker"',Tags:["allayw.newb","allayw.longrange","allayw.bringallay_$(tree)"]}
tag @s remove allayw.foundwood


