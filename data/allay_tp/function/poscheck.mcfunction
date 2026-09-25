$execute if entity @e[type=allay,tag=allaytp.reference,nbt={Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}},distance=..64] run return 1

$execute unless entity @e[type=allay,tag=allaytp.reference,nbt={Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}}] run return 1
#say tp detected

$execute at @e[type=allay,tag=allaytp.reference,nbt={Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}}] run tag @e[type=allay,nbt={Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}},distance=..128] add allaytp.tpme

execute if entity @s[gamemode=!spectator] run tp @e[type=allay,tag=allaytp.tpme] @s

scoreboard players set @s allayTP 1
function allay_tp:handletp with entity @s
scoreboard players set @s allayTP 2

tag @e[type=allay,tag=allaytp.tpme] remove allaytp.tpme


