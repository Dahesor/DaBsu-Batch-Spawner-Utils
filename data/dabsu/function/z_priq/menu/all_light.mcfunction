function dabsu:z_private_d/templates/light_rules

data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§d Quick Edit §r- Overwrite All Light Rules..."}
data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:{text:"§d Quick Edit Light Rules"}},{type:"plain_message",contents:"This applys to all potential entries of this spawner",width:450}]

data modify storage dabsu:run dialog.dialog.actions[-1].on_submit.template set value 'trigger trigger.dabsu set 102$(null)'

data modify storage dabsu:run dialog.dialog.actions[0].label set value {text:"Overwrite",color:"aqua"}
data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set value 'function dabsu:z_priq/edit/potential/reciver/all_light {form:{index:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}'

data modify storage dabsu:run dialog.dialog.actions insert 1 value {id:"edit_potential",label:{text:"Edit Same Potentials",color:"yellow"},on_submit:{type:"command_template",template:"function dabsu:z_priq/edit/potential/all_light_publish {form:{index:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}"}}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog