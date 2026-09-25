$execute if entity @s[scores={allayTP=2},gamemode=!spectator] at @s if function allay_tp:ispositionsafe if entity @e[type=allay,distance=48..64] as @e[type=allay,distance=48..64] run function allay_tp:myallays {UUID:$(UUID)}
execute if entity @s[scores={allayTP=2},gamemode=!spectator] at @s run function allay_tp:poscheck with entity @s

$execute if entity @s[scores={allayTP=1},gamemode=!spectator] at @s if function allay_tp:ispositionsafe if entity @e[type=allay,distance=..64] as @e[type=allay,distance=..64] run function allay_tp:myallays {UUID:$(UUID)}
execute if entity @s[scores={allayTP=1},gamemode=!spectator] at @s run function allay_tp:handlereference with entity @s