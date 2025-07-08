tellraw @s ""
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
execute if score aw ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Woodchoppers ","bold":true,"color":"green"},{"text": "[ ON ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/function enhanced_allays:.toggle_allay_woodchoppers"}}]
execute unless score aw ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Woodchoppers ","bold":true,"color":"green"},{"text": "[ OFF ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/function enhanced_allays:.toggle_allay_woodchoppers"}}]
tellraw @s ""
execute if score aa ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Army ","bold":true,"color":"blue"},{"text": "[ ON ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/function enhanced_allays:.toggle_allay_army"}}]
execute unless score aa ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"Army ","bold":true,"color":"blue"},{"text": "[ OFF ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/function enhanced_allays:.toggle_allay_army"}}]
tellraw @s ""
execute if score at ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"TP ","bold":true,"color":"gray"},{"text": "[ ON ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/function enhanced_allays:.toggle_allay_tp"}}]
execute unless score at ea.menu matches 1 run tellraw @s ["                  ",{"text":"Allay ","bold":true,"color":"aqua"},{"text":"TP ","bold":true,"color":"gray"},{"text": "[ OFF ]","color":"white","bold":true,"click_event": {"action": "run_command", "command": "/function enhanced_allays:.toggle_allay_tp"}}]
tellraw @s ""
tellraw @s ""

playsound ui.button.click master @s
