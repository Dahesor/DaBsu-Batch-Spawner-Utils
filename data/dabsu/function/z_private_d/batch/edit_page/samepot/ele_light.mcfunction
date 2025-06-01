function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/light_rules

data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§r Change Custom Spawn Rules..."}
data modify storage dabsu:run dialog.dialog.actions[0].action.template set value 'function dabsu:z_private_d/batch/link/element/spawn_rule {form:{use:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}'

#Get Element
data modify storage dabsu:run spawner set value {SpawnPotentials:[]}
data modify storage dabsu:run temp2 set value {type:-1}
execute store result storage dabsu:run temp2.type int 1 run scoreboard players get $SelectedType selected.dabsu
function dabsu:z_private/mod/__get_type with storage dabsu:run temp2
function dabsu:z_private/wand/quickedit/funcs/__get_element with storage dabsu:user data[0].editing
#Intial Values
function dabsu:z_priq/menu/gen/initial_lights

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog