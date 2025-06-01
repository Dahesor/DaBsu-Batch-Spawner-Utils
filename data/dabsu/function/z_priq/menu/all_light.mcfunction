function dabsu:z_private/text/get
function dabsu:z_private_d/templates/light_rules

data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§d Quick Edit §r- Overwrite All Light Rules..."}
data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:{text:"§d Quick Edit Light Rules"}},{type:"plain_message",contents:"This applys to all potential entries of this spawner",width:450}]

data modify storage dabsu:run dialog.dialog.actions[-1].action.template set value 'trigger trigger.dabsu set 102$(null)'

data modify storage dabsu:run dialog.dialog.actions[0].label set value {text:"Overwrite",color:"aqua"}
data modify storage dabsu:run dialog.dialog.actions[0].action.template set value 'function dabsu:z_priq/edit/potential/reciver/all_light {form:{index:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}'

##Lang
data modify storage dabsu:run dialog.dialog.title.text set from storage dabsu:run lang.this.menu_all_light_1
data modify storage dabsu:run dialog.dialog.body[0].contents.text set from storage dabsu:run lang.this.menu_all_light_2
data modify storage dabsu:run dialog.dialog.body[1].contents set from storage dabsu:run lang.this.menu_all_light_5
data modify storage dabsu:run dialog.dialog.actions[0].label.text set from storage dabsu:run lang.this.menu_all_light_3



function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog