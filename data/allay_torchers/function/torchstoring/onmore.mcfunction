tag @s add needsstorer
execute on passengers if entity @s[tag=allt.torchstorer] on vehicle run tag @s remove needsstorer
execute if entity @s[tag=needsstorer] run function allay_torchers:torchstoring/summon
tag @s remove needsstorer

execute on passengers if entity @s[tag=allt.torchstorer] run tag @s add storer


execute store result score ts allt.score run data get entity @s Inventory[0].count
scoreboard players operation ts allt.score += @n[tag=storer] allt.score 

execute if score ts allt.score matches 65.. run tag @s add excess
execute if entity @s[tag=excess] run scoreboard players remove ts allt.score 64
execute if entity @s[tag=excess] run data modify entity @s Motion set value [0.0,0.6,0.0]
execute if entity @s[tag=excess] run summon minecraft:item ~ ~ ~ {Motion:[0.0,0.3,0.0],Tags:['allt.newitem'],Item:{id:"minecraft:torch",count:1},PickupDelay:30s}
execute if entity @s[tag=excess] run execute store result entity @n[tag=allt.newitem] Item.count int 1 run scoreboard players get ts allt.score
execute if entity @s[tag=excess] run tag @n[tag=allt.newitem] remove allt.newitem
execute if entity @s[tag=excess] run scoreboard players set ts allt.score 64
tag @s remove excess

execute store result entity @n[tag=storer] data.Inventory.count int 1 run scoreboard players get ts allt.score
execute store result score @n[tag=storer] allt.score run scoreboard players get ts allt.score
scoreboard players reset ts allt.score
data modify entity @s Inventory set value []


tag @n[tag=storer] remove storer