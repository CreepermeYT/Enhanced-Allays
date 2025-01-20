##in case two players invoke the same allay
execute if entity @s[tag=allayw.alrrun] run return 0
tag @s add allayw.alrrun


#$say in theory breaking for $(tree)
$execute if block ~.36 ~.34 ~.36 $(tree)_log run setblock ~.36 ~.34 ~.36 air destroy
$execute if block ~.36 ~.34 ~-.36 $(tree)_log run setblock ~.36 ~.34 ~-.36 air destroy
$execute if block ~-.36 ~.34 ~-.36 $(tree)_log run setblock ~-.36 ~.34 ~-.36 air destroy
$execute if block ~-.36 ~.34 ~.36 $(tree)_log run setblock ~-.36 ~.34 ~.36 air destroy
$execute if block ~.36 ~.4 ~.36 $(tree)_log run setblock ~.36 ~.4 ~.36 air destroy
$execute if block ~.36 ~.4 ~-.36 $(tree)_log run setblock ~.36 ~.4 ~-.36 air destroy
$execute if block ~-.36 ~.4 ~-.36 $(tree)_log run setblock ~-.36 ~.4 ~-.36 air destroy
$execute if block ~-.36 ~.4 ~.36 $(tree)_log run setblock ~-.36 ~.4 ~.36 air destroy


#plant sapplings
$execute as @n[predicate=allay_woodchoppers:sapling_$(tree),distance=..2] at @s if block ~ ~-1 ~ #minecraft:dirt run tag @s add allayw.sap
$execute as @e[tag=allayw.sap] at @s run setblock ~ ~ ~ minecraft:$(tree)_sapling 
execute as @e[tag=allayw.sap] at @s run playsound minecraft:block.grass.place block @a[distance=..16] ~ ~ ~
execute as @e[tag=allayw.sap] at @s run kill @s

#scan only if not being bring
execute if entity @s[tag=allayw.allayb] run return 1

#scan for new trees
$execute positioned ~ ~-1 ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~-1 ~ {Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
execute if entity @s[tag=allayw.foundwood] run return 1

$execute positioned ~ ~ ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~ ~ {Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
execute if entity @s[tag=allayw.foundwood] run return 1

$execute positioned ~ ~2 ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~2 ~ {Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
execute if entity @s[tag=allayw.foundwood] run return 1

$execute positioned ~ ~1 ~ if predicate allay_woodchoppers:scanthreebythree_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say foundnew
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~1 ~ {Tags:["allayw.newb","allayw.bringallay_$(tree)"]}
execute if entity @s[tag=allayw.foundwood] run return 1


$execute positioned ~ ~ ~ if predicate allay_woodchoppers:scanlongrange_$(tree) run tag @s add allayw.foundwood
#execute if entity @s[tag=allayw.foundwood] run say longrange
$execute if entity @s[tag=allayw.foundwood] run summon marker ~ ~ ~ {CustomName:'"allay_woodchoppers:$(tree)_log marker"',Tags:["allayw.newb","allayw.longrange","allayw.bringallay_$(tree)"]}
execute if entity @s[tag=allayw.foundwood] run return 1


