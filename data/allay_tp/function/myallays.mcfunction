execute if entity @s[tag=allaytp.farm] run return 0
tag @s add allaytp.me
execute if entity @e[tag=!allaytp.me,tag=allaytp.farm,distance=...01] run tag @e[type=allay,distance=...01] add allaytp.farm
tag @s remove allaytp.me
$execute if entity @s[nbt={Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}}] run function allay_tp:findtpspot