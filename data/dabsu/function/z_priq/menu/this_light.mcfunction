function dabsu:z_private_d/templates/light_rules

#Get Current
data modify storage dabsu:run index set value {}
function dabsu:z_private_d/uid/get
data modify storage dabsu:run spawner set from block ~ ~ ~
data modify storage dabsu:run index.index set from storage dabsu:user data[0].editing.index
function dabsu:z_private/wand/quickedit/funcs/__get_element with storage dabsu:run index

#Change Title
data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§d Quick Edit §r- Modify Light Rule"}
data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:{text:"§d Quick Edit Light Rules"}},{type:"plain_message",contents:"Applys to this single potential entry that you have selected",width:450}]
data modify storage dabsu:run dialog.dialog.actions[-1].on_submit.template set value 'trigger trigger.dabsu set 102$(null)'

#Initial
function dabsu:z_priq/menu/gen/initial_lights


data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set value 'function dabsu:z_priq/edit/potential/reciver/this_light {form:{use:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}'

data modify storage dabsu:run dialog.dialog.actions insert 1 value {id:"edit_potential",label:{text:"Edit Same Potentials",color:"yellow"},on_submit:{type:"command_template",template:"function dabsu:z_priq/edit/potential/this_light_publish {form:{use:$(use),custom_spawn_rules:{block_light_limit:[$(b_min),$(b_max)],sky_light_limit:[$(s_min),$(s_max)]}}}"}}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog