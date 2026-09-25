tag @s remove allayarmy.timeout
data modify entity @s NoAI set value 1b
scoreboard players remove @s allayarmy.attackdelay 1

execute if entity @s[scores={allayarmy.attackdelay=7..}] at @s positioned ^ ^0.15 ^0.45 if function allay_army:ispositionsafe run tp @s ~ ~ ~ ~ -5

execute if entity @s[scores={allayarmy.attackdelay=3..6}] at @s positioned ^ ^0.2 ^0.35 if function allay_army:ispositionsafe run tp @s ~ ~ ~ ~ -15

execute if entity @s[scores={allayarmy.attackdelay=0..2}] at @s positioned ^ ^0.25 ^0.2 if function allay_army:ispositionsafe run tp @s ~ ~ ~ ~ -20

execute if entity @s[scores={allayarmy.attackdelay=0}] run data modify entity @s Motion set value [0.0,0.3,0.0]
execute if entity @s[scores={allayarmy.attackdelay=0}] run data modify entity @s NoAI set value 0b

execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @s remove allayarmy.afterattack
execute if entity @s[scores={allayarmy.attackdelay=..0}] run tag @s add allayarmy.attackdelay
execute if entity @s[scores={allayarmy.attackdelay=..0}] run scoreboard players set @s allayarmy.attackdelay 30