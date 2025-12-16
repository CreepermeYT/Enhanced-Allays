summon item ~ ~ ~ {Item:{id:"minecraft:dirt"},Tags:['new']}
data modify entity @n[type=item,tag=new] Item set from entity @s data.Inventory
tag @n[tag=new] remove new
kill @s