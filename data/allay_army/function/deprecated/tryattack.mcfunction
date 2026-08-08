#stop other allays from attacking same mob
execute if data entity @s CustomName run tag @s add allayarmy.nametagged
execute if entity @s[tag=allayarmy.nametagged] run return 0
tag @s add allayarmy.attacked
scoreboard players set @n[tag=allayarmy.sword,tag=!allayarmy.attacking,tag=!allayarmy.attackdelay,tag=!allayarmy.afterattack,type=allay] allayarmy.attackdelay 80
tag @n[tag=allayarmy.sword,tag=!allayarmy.attacking,tag=!allayarmy.attackdelay,tag=!allayarmy.afterattack,type=allay] add allayarmy.attacking
##say found mob