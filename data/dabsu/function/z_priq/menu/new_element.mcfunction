function dabsu:z_private_d/templates/potential

function dabsu:z_private_d/uid/get
data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§d Quick Edit -§a New Potential..."}

data remove storage dabsu:run dialog.dialog.actions[0]
data remove storage dabsu:run dialog.dialog.actions[0]
data remove storage dabsu:run dialog.dialog.actions[0]

#Inputs
data modify storage dabsu:run dialog.dialog.inputs[1].multiline.height set value 60
data modify storage dabsu:run dialog.dialog.inputs[2] set value {type:"text",key:"equipment",label:"§bEquipments§7 (data.equipment) §fLeave value to \"§a{}§r\" to omit",initial:"{}",width:400,label_visible:true,max_length:2147483647}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"boolean",key:"use_light",label:"Use Custom Spawn Rules",initial:true,on_true:"1",on_false:"0"}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"b_min",start:0,end:15,initial:0,label:"Min Block Light",step:1,width:200}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"b_max",start:0,end:15,initial:15,label:"Max Block Light",step:1,width:200}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"s_min",start:0,end:15,initial:0,label:"Min Sky Light",step:1,width:200}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"s_max",start:0,end:15,initial:15,label:"Max Sky Light",step:1,width:200}


data modify storage dabsu:run dialog.dialog.actions[0].label set value {text:"Append to Itself",color:"green"}

data modify storage dabsu:run dialog.dialog.actions insert 1 value {id:"edit_potential",label:{text:"...To Same Potential",color:"yellow"},on_submit:{type:"command_template",template:'-$(none)'},width:130}


#Edit Itself
data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set value 'function dabsu:z_priq/edit/potential/reciver/newel {form:{use_light:$(use_light),weight:$(weight),data:{entity:$(entity),equipment:$(equipment),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}}'


#Edit Same Potentials
data modify storage dabsu:run dialog.dialog.actions[1].on_submit.template set value 'function dabsu:z_priq/edit/potential/new_publish {form:{use_light:$(use_light),weight:$(weight),data:{entity:$(entity),equipment:$(equipment),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}}'

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog