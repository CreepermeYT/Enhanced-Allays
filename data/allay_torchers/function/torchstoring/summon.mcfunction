summon minecraft:marker ~ ~ ~ {Tags:['allt.torchstorer','allt.new']}
ride @n[tag=allt.new] mount @s
data modify entity @n[tag=allt.new] data.Inventory set value {id:"minecraft:torch",count:0}
data modify entity @n[tag=allt.new] data.memories set from entity @s Brain.memories
execute store result score @n[tag=allt.new] allt.score run data get entity @s data.Inventory.count
tag @n[tag=allt.new] remove allt.new
tag @s add allt.acthas