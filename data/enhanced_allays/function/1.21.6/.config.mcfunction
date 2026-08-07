tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ["",{"text":" ","bold":true},"                            |",{"text":"  ","bold":true},"                  |"]
tellraw @s ["",{"text":" ","bold":true},"                            |",{"text":"  ","bold":true},"                  |"]
tellraw @s "                            \\/                  \\/"
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"text":"","bold":true},{"text":"               ","bold":false},{"text":"<<","color":"dark_purple"},{"text":"Enhanced","color":"gold"},{"text":">> ","color":"dark_purple"},{"text":"Allays","color":"aqua"},{"text":" datapack/mod","color":"gray"}]
tellraw @s ""
execute if score aw ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Woodchoppers ","bold":true,"color":"green"},{"text": "[ ON ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 1"}}]
execute unless score aw ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Woodchoppers ","bold":true,"color":"green"},{"text": "[ OFF ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 1"}}]
tellraw @s ""
execute if score aa ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Army ","bold":true,"color":"blue"},{"text": "[ ON ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 2"}}]
execute unless score aa ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Army ","bold":true,"color":"blue"},{"text": "[ OFF ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 2"}}]
tellraw @s ""
execute if score atp ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"TP ","bold":true,"color":"gray"},{"text": "[ ON ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 3"}}]
execute unless score atp ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"TP ","bold":true,"color":"gray"},{"text": "[ OFF ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 3"}}]
tellraw @s ""
execute if score at ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"TP ","bold":true,"color":"gray"},{"text": "[ ON ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 4"}}]
execute unless score at ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"TP ","bold":true,"color":"gray"},{"text": "[ OFF ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/trigger ea.menu set 4"}}]
tellraw @s ""

scoreboard players enable @s ea.menu

playsound ui.button.click master @s
