scoreboard players add aa ea.menu 1
execute if score aa ea.menu matches 2.. run scoreboard players set aa ea.menu 0

execute if score aa ea.menu matches 0 as @e[tag=allayarmy.attacking] run data modify entity @s NoAI set value 0b

function enhanced_allays:.config