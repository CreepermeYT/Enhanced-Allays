execute as @e[tag=ea.stuck] if score @s ea.pathfind matches 1.. run scoreboard players remove @s ea.pathfind 1
execute as @e[tag=ea.stuck] if score @s ea.pathfind matches 0 run tag @s remove ea.stuck
execute as @e[tag=ea.pathfinding] run data modify entity @s NoAI set value 0b
execute as @e[tag=!ea.pathfinding,tag=!ea.stuck,scores={ea.pathfind=..-1}] run scoreboard players add @s ea.pathfind 1
tag @e[tag=ea.taken] remove ea.taken
tag @n[tag=ea.pathfinding] remove ea.pathfinding