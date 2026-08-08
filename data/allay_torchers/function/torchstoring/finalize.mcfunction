summon item ~ ~ ~ {Item:{id:"minecraft:torch",count:1}}
execute unless data entity @s equipment.mainhand run data modify entity @s Brain.memories set value {}
scoreboard players reset @s allt.score
tag @s remove allt.stuck
tag @s remove allt.allayb
tag @s remove allt.acthas
tag @s remove allt.disabled
tag @s remove empty