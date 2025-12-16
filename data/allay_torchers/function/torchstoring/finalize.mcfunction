summon item ~ ~ ~ {Item:{id:"minecraft:torch",count:1}}
data modify entity @n[type=minecraft:allay] equipment.mainhand set value {}
data modify entity @n[type=minecraft:allay] Brain.memories set value {}
scoreboard players reset @s allt.score
tag @s remove allt.stuck
tag @s remove allt.allayb
tag @s remove allt.acthas
tag @s remove allt.disabled
tag @s remove empty