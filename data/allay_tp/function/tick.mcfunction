#0 off
#2 on
scoreboard players enable @a allayTP

execute as @a[scores={allayTP=2},gamemode=!spectator] at @s if function allay_tp:ispositionsafe if entity @e[type=allay,distance=32..64] run function allay_tp:myallays with entity @s


execute as @a[scores={allayTP=1},gamemode=!spectator] at @s if function allay_tp:ispositionsafe if entity @e[type=allay,distance=..64] run function allay_tp:myallaysclose with entity @s
execute as @a[scores={allayTP=1}] run tellraw @s [{"text":"Allay ","color":"aqua"},{"text":"TP ","color":"gray"},{"text":"ON","color":"white","bold":true}]
execute as @a[scores={allayTP=1}] run scoreboard players set @s allayTP 2
execute as @a[scores={allayTP=3}] run scoreboard players set @s allayTP -1
execute as @a[scores={allayTP=-1}] run tellraw @s [{"text":"Allay ","color":"aqua"},{"text":"TP ","color":"gray"},{"text":"OFF","color":"white","bold":true}]
execute as @a[scores={allayTP=-1}] run scoreboard players set @s allayTP 0