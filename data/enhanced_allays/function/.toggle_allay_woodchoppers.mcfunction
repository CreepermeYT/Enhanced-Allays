scoreboard players add aw ea.menu 1
execute if score aw ea.menu matches 2.. run scoreboard players set aw ea.menu 0

execute if score aw ea.menu matches 0 as @e[tag=allayw.moveallay] run data modify entity @s NoAI set value 0b

function enhanced_allays:.config