execute unless data storage enhanced_allays:enabled allay_woodchoppers run data modify storage enhanced_allays:enable allay_woodchoppers set value 0
execute if data storage enhanced_allays:enabled allay_woodchoppers run data remove storage enhanced_allays:enabled allay_woodchoppers

execute as @e[tag=allayw.moveallay] run data modify entity @s NoAI set value 0b
execute if data storage enhanced_allays:enable allay_woodchoppers run data modify storage enhanced_allays:enabled allay_woodchoppers set value 0
execute if data storage enhanced_allays:enable allay_woodchoppers run data remove storage enhanced_allays:enable allay_woodchoppers
function enhanced_allays:.config