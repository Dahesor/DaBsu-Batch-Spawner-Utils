data merge entity @s {block_state:{Name:"white_concrete"},Glowing:0b,glow_color_override:16745347,Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp","dabsu.gui_edit.sr"],brightness:{block:15,sky:15}}

data modify storage dabsu:run shape.this set from storage dabsu:run shape.z
execute if score #x calc.dabsu matches -1 store result storage dabsu:run shape.this.translation[0] float -0.01 run data get storage dabsu:run shape.this.translation[0] 100
execute if score #y calc.dabsu matches -1 store result storage dabsu:run shape.this.translation[1] float -0.01 run data get storage dabsu:run shape.this.translation[1] 100
execute if score #y calc.dabsu matches 0 run data modify storage dabsu:run shape.this.translation[1] set value 0.0f
data modify entity @s transformation set from storage dabsu:run shape.this
execute if score #y calc.dabsu matches 0 run data merge entity @s {Glowing:1b,block_state:{Name:"pink_concrete"},glow_color_override:14050960}