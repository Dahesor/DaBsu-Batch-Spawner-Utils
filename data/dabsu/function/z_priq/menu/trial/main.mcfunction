function dabsu:z_priq/menu/trial/body

scoreboard players operation #this uid.dabsu = @s uid.dabsu
data modify storage dabsu:run trial set value {}
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.trial_marker,distance=0..] if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/menu/trial/get_config

function dabsu:z_priq/menu/trial/normal
function dabsu:z_priq/menu/trial/ominous


##Lang
#data modify storage dabsu:run dialog.dialog.title[1].text set from storage dabsu:run lang.this.menu_templates_attribute_2
function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog

