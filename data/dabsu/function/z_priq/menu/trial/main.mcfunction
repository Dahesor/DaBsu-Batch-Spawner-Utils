function dabsu:z_priq/menu/trial/body

scoreboard players operation #this uid.dabsu = @s uid.dabsu
data modify storage dabsu:run trial set value {}
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.trial_marker,distance=0..] if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/menu/trial/get_config

function dabsu:z_priq/menu/trial/normal
function dabsu:z_priq/menu/trial/ominous


##Lang
#data modify storage dabsu:run dialog.dialog.title[1].text set from storage dabsu:run lang.this.menu_templates_attribute_2

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog

return 1

give @s trial_spawner[block_entity_data={id:"trial_spawner",normal_config:"minecraft:trial_chamber/melee/husk/normal"}]
give @s trial_spawner[block_entity_data={id:"trial_spawner",normal_config:{spawn_potentials:[{weight:1,data:{entity:{id:"zombie"}}}]},ominous_config:{spawn_potentials:[{weight:10,data:{entity:{id:"creeper"}}}]}}]