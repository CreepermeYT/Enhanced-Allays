tag @s remove allayarmy.timeout
scoreboard players remove @s allayarmy.attackdelay 1
data modify entity @s NoAI set value 1b

execute if entity @s[scores={allayarmy.attackdelay=7..}] at @s run tp @s ~ ~ ~ ~ -5
execute if entity @s[scores={allayarmy.attackdelay=7..}] at @s positioned ^ ^0.15 ^0.5 if function allay_army:ispositionsafe run tp @s ~ ~ ~ ~ -5

execute if entity @s[scores={allayarmy.attackdelay=3..6}] at @s positioned ^ ^0.2 ^0.35 if function allay_army:ispositionsafe run tp @s ~ ~ ~ ~ -15

execute if entity @s[scores={allayarmy.attackdelay=0..2}] at @s positioned ^ ^0.25 ^0.2 if function allay_army:ispositionsafe run tp @s ~ ~ ~ ~ -20

execute if entity @s[scores={allayarmy.attackdelay=0}] run data modify entity @s Motion set value [0.0,0.3,0.0]
execute if entity @s[scores={allayarmy.attackdelay=0}] run data modify entity @s NoAI set value 0b

execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @s remove allayarmy.afterattack
execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @s add allayarmy.attackdelay
execute if entity @s[scores={allayarmy.attackdelay=..0}] run scoreboard players set @s allayarmy.attackdelay 30

execute store result score t allayarmy.attackdelay run data get entity @s Health 0.09
execute if score t allayarmy.attackdelay matches 0 if entity @s[scores={allayarmy.attackdelay=30}] run data modify entity @s Motion set value [0.0,0.5,0.0]
execute if score t allayarmy.attackdelay matches 0 if entity @s[scores={allayarmy.attackdelay=30}] run scoreboard players set @s allayarmy.attackdelay 120
scoreboard players reset t allayarmy.attackdelay

