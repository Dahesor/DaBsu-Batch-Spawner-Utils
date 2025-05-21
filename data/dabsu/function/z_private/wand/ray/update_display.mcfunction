scoreboard players set @s highlight.dabsu 2
execute if score %devide calc.dabsu matches ..50 run data modify entity @s text set from storage dabsu:run text
execute unless score %devide calc.dabsu matches ..50 if score %update calc.dabsu matches 1 run data modify entity @s text set from storage dabsu:run text

function dabsu:z_private/wand/ray/rotations
execute as @e[type=item_display,tag=dabsu.displayer,distance=..0.5] if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_private/wand/ray/item/update_shape