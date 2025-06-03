execute if entity @s[tag=dabsu.wait_for_new] run return fail
tag @s add dabsu.wait_for_new

scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @a if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_private/text/tellraw_self {text:{text:"wait_for_new_spawner",color:"yellow"}}
execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit] if score @s uid.dabsu = #this uid.dabsu run kill
execute if score @s selected.dabsu matches 1 run function dabsu:z_private/select/remove_self