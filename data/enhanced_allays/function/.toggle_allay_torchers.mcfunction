scoreboard players add at ea.menu 1
execute if score at ea.menu matches 2.. run scoreboard players set at ea.menu 0

execute if score at ea.menu matches 0 as @e[tag=allt.allayb] run data modify entity @s NoAI set value 0b

function enhanced_allays:.config