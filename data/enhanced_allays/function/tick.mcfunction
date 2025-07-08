execute as @a[scores={ea.menu=1..}] at @s run function enhanced_allays:openmenu
execute if score aa ea.menu matches 1 run function allay_army:tick
execute if score aw ea.menu matches 1 run function allay_woodchoppers:tick
execute if score at ea.menu matches 1 run function allay_tp:tick
