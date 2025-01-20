execute unless data storage enhanced_allays:enabled allay_army run data modify storage enhanced_allays:enable allay_army set value 0
execute if data storage enhanced_allays:enabled allay_army run data remove storage enhanced_allays:enabled allay_army

execute as @e[tag=allayarmy.attacking] run data modify entity @s NoAI set value 0b
execute if data storage enhanced_allays:enable allay_army run data modify storage enhanced_allays:enabled allay_army set value 0
execute if data storage enhanced_allays:enable allay_army run data remove storage enhanced_allays:enable allay_army
function enhanced_allays:.config