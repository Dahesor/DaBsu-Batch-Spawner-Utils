scoreboard players operation #this uid.dabsu = @s uid.dabsu
execute as @e[type=#dabsu:quick_display,tag=dabsu.gui_edit] if score @s uid.dabsu = #this uid.dabsu run kill
function dabsu:z_private_d/uid/get
data modify storage dabsu:run data set from entity @s data
execute positioned ~ ~ ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function dabsu:z_priq/gui/boot