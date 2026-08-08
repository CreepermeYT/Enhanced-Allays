## IF <1 block away
tag @s add allt.failed
execute at @s positioned ~ ~ ~ if function allay_torchers:bringallay/placetorch run tag @s remove allt.failed
execute if entity @s[tag=!allt.failed] on passengers if entity @s[tag=allt.torchstorer] run tag @s add allt.t
execute if entity @s[tag=!allt.failed] run scoreboard players remove @n[tag=allt.t] allt.score 1
execute if entity @s[tag=!allt.failed] if score @n[tag=allt.t] allt.score matches ..0 run tag @s remove allt.acthas
execute if entity @s[tag=!allt.failed] if score @n[tag=allt.t] allt.score matches ..0 run kill @n[tag=allt.t]
execute if entity @s[tag=!allt.failed] store result entity @n[tag=allt.t] data.Inventory.count int 1 run scoreboard players get @n[tag=allt.t] allt.score

kill @n[tag=ea.selectedtarget]
execute if entity @s[tag=!allt.failed] run return 1
tag @s remove allt.failed
return 0