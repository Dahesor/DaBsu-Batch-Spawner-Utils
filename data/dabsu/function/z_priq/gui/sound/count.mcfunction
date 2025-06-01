execute unless score disableSubtitle Option.dabsu matches -1 run title @s times 0 10 3
execute unless score disableSubtitle Option.dabsu matches -1 run title @s title ""
execute unless score disableSubtitle Option.dabsu matches -1 run title @s subtitle ["↑ ",{score:{name:"#step_x",objective:"calc.dabsu"},color:"yellow"}," ↓"]
execute if score disableSubtitle Option.dabsu matches -1 run tellraw @s ["↑ ",{score:{name:"#step_x",objective:"calc.dabsu"},color:"yellow"}," ↓"]

execute if score #step_x calc.dabsu matches 0 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 0.5 0.5
scoreboard players remove #step_x calc.dabsu 1
scoreboard players operation #step_x calc.dabsu %= #14 calc.dabsu
execute if score #step_x calc.dabsu matches 0 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 0.5297 0.5
execute if score #step_x calc.dabsu matches 1 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 0.5946 0.5
execute if score #step_x calc.dabsu matches 2 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 0.6674 0.5
execute if score #step_x calc.dabsu matches 3 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 0.7071 0.5
execute if score #step_x calc.dabsu matches 4 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 0.7937 0.5
execute if score #step_x calc.dabsu matches 5 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 0.8908 0.5
execute if score #step_x calc.dabsu matches 6 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 1.0 0.5
execute if score #step_x calc.dabsu matches 7 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 1.0594 0.5
execute if score #step_x calc.dabsu matches 8 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 1.1892 0.5
execute if score #step_x calc.dabsu matches 9 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 1.3348 0.5
execute if score #step_x calc.dabsu matches 10 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 1.4142 0.5
execute if score #step_x calc.dabsu matches 11 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 1.5874 0.5
execute if score #step_x calc.dabsu matches 12 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 1.7817 0.5
execute if score #step_x calc.dabsu matches 13 run return run playsound block.note_block.guitar master @s ~ ~ ~ 0.5 2.0 0.5