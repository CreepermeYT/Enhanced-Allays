tag @s add allayw.alonetest
$execute if entity @e[tag=allayw.bringallay_$(tree),tag=!allayw.alonetest,distance=...09] run tag @s remove allayw.alonetest
execute if entity @s[tag=!allayw.alonetest] run kill @s
tag @s remove allayw.alonetest