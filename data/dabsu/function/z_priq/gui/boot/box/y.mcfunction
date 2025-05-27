data merge entity @s {block_state:{Name:"white_concrete"},Glowing:0b,glow_color_override:16762052,Tags:["dabsu.gui_edit","dabsu.displayer","dabsu.temp"],brightness:{block:15,sky:15}}

data modify storage dabsu:run shape.this set from storage dabsu:run shape.y
execute if score #x calc.dabsu matches -1 store result storage dabsu:run shape.this.translation[0] float -0.01 run data get storage dabsu:run shape.this.translation[0] 100
execute if score #z calc.dabsu matches -1 store result storage dabsu:run shape.this.translation[2] float -0.01 run data get storage dabsu:run shape.this.translation[2] 100

data modify entity @s transformation set from storage dabsu:run shape.this