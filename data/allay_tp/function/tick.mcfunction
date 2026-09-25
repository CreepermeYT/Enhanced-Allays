#0 off
#2 on
scoreboard players enable @a allayTP


## Manual toggle ON
execute as @a[scores={allayTP=1},gamemode=!spectator] run function allay_tp:handletp with entity @s
execute as @a[scores={allayTP=1}] run tellraw @s [{"text":"Allay ","color":"aqua"},{"text":"TP ","color":"gray"},{"text":"ON","color":"white","bold":true}]
execute as @a[scores={allayTP=1}] run scoreboard players set @s allayTP 2

## Manual toggle Off
execute as @a[scores={allayTP=3}] at @s run function allay_tp:handlereference with entity @s
execute as @a[scores={allayTP=3}] run scoreboard players set @s allayTP -1
execute as @a[scores={allayTP=-1}] run tellraw @s [{"text":"Allay ","color":"aqua"},{"text":"TP ","color":"gray"},{"text":"OFF","color":"white","bold":true}]
execute as @a[scores={allayTP=-1}] run scoreboard players set @s allayTP 0

## While ON
execute as @a[scores={allayTP=2},gamemode=!spectator] run function allay_tp:handletp with entity @s
