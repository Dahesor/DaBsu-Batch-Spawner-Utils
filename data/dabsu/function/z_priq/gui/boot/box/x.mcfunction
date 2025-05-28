data merge entity @s {block_state:{Name:"white_concrete"},Glowing:0b,glow_color_override:16762052,Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.gui_edit.sr"],brightness:{block:15,sky:15}}

data modify storage dabsu:run shape.this set from storage dabsu:run shape.x
execute if score #y calc.dabsu matches -1 store result storage dabsu:run shape.this.translation[1] float -0.01 run data get storage dabsu:run shape.this.translation[1] 100
execute if score #y calc.dabsu matches 0 run data modify storage dabsu:run shape.this.translation[1] set value 0.0f
execute if score #z calc.dabsu matches -1 store result storage dabsu:run shape.this.translation[2] float -0.01 run data get storage dabsu:run shape.this.translation[2] 100

data modify entity @s transformation set from storage dabsu:run shape.this
data modify entity @s interpolation_duration set value 20
execute if score #y calc.dabsu matches 0 run data merge entity @s {Glowing:1b,block_state:{Name:"pink_concrete"},glow_color_override:14050960}