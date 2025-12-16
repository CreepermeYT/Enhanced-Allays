execute on passengers if entity @s[tag=allt.torchstorer] run tag @s add storer
scoreboard players remove @n[tag=storer] allt.score 1
execute store result entity @n[tag=storer] data.Inventory.count int 1 run scoreboard players get @n[tag=storer] allt.score
execute if entity @e[tag=storer] run data modify entity @s Inventory append from entity @n[tag=storer] data.Inventory
execute if entity @e[tag=storer] run data modify entity @s equipment.mainhand set value {id:"minecraft:torch",count:1}
execute if entity @e[tag=storer] run data modify entity @s Brain.memories set from entity @n[tag=storer] data.memories
tag @s remove allt.has
tag @s add allt.disabled
kill @n[tag=storer]