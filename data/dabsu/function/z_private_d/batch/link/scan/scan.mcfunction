dialog clear @s
execute if entity @s[tag=dabsu.register] run playsound block.note_block.bit master @s ~ ~ ~ 1 0.8 1
execute if entity @s[tag=dabsu.register] run return run tag @s remove dabsu.register
tag @s add dabsu.register
playsound block.note_block.bit master @s ~ ~ ~ 1 1.4 1