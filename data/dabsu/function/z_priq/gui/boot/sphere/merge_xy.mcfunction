data modify storage dabsu:run shape.this set from entity @s transformation
execute store result score #current calc.dabsu run data get storage dabsu:run shape.this.translation[1] 10000
scoreboard players operation #current calc.dabsu *= #scale calc.dabsu
execute store result storage dabsu:run shape.this.translation[1] float 0.0001 run scoreboard players get #current calc.dabsu

execute store result score #current calc.dabsu run data get storage dabsu:run shape.this.translation[2] 10000
scoreboard players operation #current calc.dabsu *= #scale calc.dabsu
execute store result storage dabsu:run shape.this.translation[2] float 0.0001 run scoreboard players get #current calc.dabsu

execute store result score #current calc.dabsu run data get storage dabsu:run shape.this.scale[1] 4800
scoreboard players operation #current calc.dabsu *= #scale calc.dabsu
execute store result storage dabsu:run shape.this.scale[1] float 0.0001 run scoreboard players get #current calc.dabsu




data modify entity @s transformation set from storage dabsu:run shape.this
tag @s remove dabsu._temp