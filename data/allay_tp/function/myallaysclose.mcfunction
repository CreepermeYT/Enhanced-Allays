$execute as @e[type=allay,distance=..64] if entity @s[nbt={Brain:{memories:{"minecraft:liked_player":{value:$(UUID)}}}}] unless data entity @s CustomName run function allay_tp:findtpspot