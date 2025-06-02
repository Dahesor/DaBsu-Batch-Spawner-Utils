function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/potential

data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§a New Potential..."}
data modify storage dabsu:run dialog.dialog.actions[2].label.translate set value "gui.done"


#Edit
data modify storage dabsu:run run set value {cmd_pre:""}
data modify storage dabsu:run run.cmd_pre set value 'function dabsu:z_private_d/batch/link/element/newl {form:{use_light:$(use_light),weight:$(weight),data:{entity:"$(entity)",equipment:"$(equipment)",custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}}'


data modify storage dabsu:run dialog.dialog.actions[-2].action.template set from storage dabsu:run run.cmd_pre
data remove storage dabsu:run dialog.dialog.actions[0]
data remove storage dabsu:run dialog.dialog.actions[0]
data remove storage dabsu:run dialog.dialog.actions[0]

data modify storage dabsu:run dialog.dialog.inputs[1].multiline.height set value 60

data modify storage dabsu:run dialog.dialog.inputs[2] set value {type:"text",key:"equipment",label:"§bEquipments§7 (data.equipment) §fLeave value to \"§a{}§r\" to omit",initial:"{}",width:400,label_visible:true,max_length:2147483647}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"boolean",key:"use_light",label:"Use Custom Spawn Rules",initial:true,on_true:"1",on_false:"0"}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"b_min",start:0,end:15,initial:0,label:"Min Block Light",step:1,width:200}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"b_max",start:0,end:15,initial:15,label:"Max Block Light",step:1,width:200}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"s_min",start:0,end:15,initial:0,label:"Min Sky Light",step:1,width:200}
data modify storage dabsu:run dialog.dialog.inputs append value {type:"number_range",key:"s_max",start:0,end:15,initial:15,label:"Max Sky Light",step:1,width:200}

##Lang
data modify storage dabsu:run dialog.dialog.title.text set from storage dabsu:run lang.this.batch_edit_page_samepot_new_1
data modify storage dabsu:run dialog.dialog.inputs[2].label set from storage dabsu:run lang.this.menu_new_element_1_lab
data modify storage dabsu:run dialog.dialog.inputs[3].label set from storage dabsu:run lang.this.menu_new_element_2_lab
data modify storage dabsu:run dialog.dialog.inputs[4].label set from storage dabsu:run lang.this.menu_new_element_3_lab
data modify storage dabsu:run dialog.dialog.inputs[5].label set from storage dabsu:run lang.this.menu_new_element_4_lab
data modify storage dabsu:run dialog.dialog.inputs[6].label set from storage dabsu:run lang.this.menu_new_element_5_lab
data modify storage dabsu:run dialog.dialog.inputs[7].label set from storage dabsu:run lang.this.menu_new_element_6_lab
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.menu_new_element_2


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog