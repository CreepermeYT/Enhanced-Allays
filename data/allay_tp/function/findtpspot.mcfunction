execute store result entity @s Fire short 1 run random value 0..2
execute store result entity @s DeathTime short 1 run random value 0..2
execute store result entity @s HurtTime short 1 run random value 0..1
function allay_tp:trytp with entity @s
execute if entity @s[nbt={DeathTime:1s}] run function allay_tp:findtpspot