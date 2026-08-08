tag @n[tag=allt.place,tag=!allt.taken] add allt.mine
tag @n[tag=allt.mine] add allt.taken

execute as @n[tag=allt.mine] at @s run function allay_torchers:bringallay/bring

tag @n[tag=allt.mine] remove allt.mine