execute as @e[tag=allt.has,tag=!allt.acthas,distance=..4] unless entity @e[tag=allt.donated,distance=..4] run tag @s add allt.donee
execute unless entity @e[tag=allt.donee,distance=..4] run return 0

execute store result score t allt.score run scoreboard players get @s allt.score
execute store result score d allt.score run execute if entity @e[tag=allt.donee]
scoreboard players add d allt.score 1
scoreboard players operation t allt.score /= d allt.score
scoreboard players remove d allt.score 1
scoreboard players operation t allt.score *= d allt.score

scoreboard players operation @s allt.score -= t allt.score
execute on vehicle run data modify entity @s Motion set value [0.0,0.6,0.0]
execute if score t allt.score matches 1.. run summon minecraft:item ~ ~ ~ {Motion:[0.0,0.3,0.0],Tags:['allt.newitem','allt.donated'],Item:{id:"minecraft:torch",count:1},PickupDelay:30s}
execute store result entity @n[tag=allt.newitem] Item.count int 1 run scoreboard players get t allt.score
tag @n[tag=allt.newitem] remove allt.newitem

scoreboard players reset t allt.score
scoreboard players reset d allt.score
tag @e remove allt.donee