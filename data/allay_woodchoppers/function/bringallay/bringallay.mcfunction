execute unless entity @a[distance=..48] run return 0

 #bring allay
tag @s add allayw.bring
execute as @n[type=allay,tag=allayw.haswood,tag=!allayw.allayb,tag=!allayw.stuck,distance=..64] run tag @s add allayw.moveallay
execute as @n[tag=allayw.moveallay] at @s run data modify entity @s NoAI set value 1b
execute as @n[tag=allayw.moveallay] at @s run function allay_woodchoppers:bringallay/goallay
tag @n[tag=allayw.moveallay] remove allayw.moveallay
tag @s remove allayw.bring