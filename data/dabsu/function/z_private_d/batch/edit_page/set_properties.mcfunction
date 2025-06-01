function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/single_settings

data modify storage dabsu:run dialog.dialog.title set value "§6[DaBsu]§r Edit §nMultiple§r Spawners' Properties..."
data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:"§dEnter nothing to leave value unchanged",width:400}]

data modify storage dabsu:run dialog.dialog.inputs prepend value {type:"minecraft:single_option",key:"mode",options:[{id:"replace",initial:1b,display:{text:"Replace",color:"#d6fff5"}},{id:"adjust",initial:0b,display:{text:"Add or Subtract",color:"#e8ffca"}}],label:{text:"Mode"},label_visible:true,width:200}

data modify storage dabsu:run dialog.dialog.actions[0].action.template set value "function dabsu:z_private_d/batch/link/edit_properties {form:{SpawnCount:'$(SpawnCount)',SpawnRange:'$(SpawnRange)',RequiredPlayerRange:'$(RequiredPlayerRange)',MinSpawnDelay:'$(MinSpawnDelay)',MaxSpawnDelay:'$(MaxSpawnDelay)',MaxNearbyEntities:'$(MaxNearbyEntities)',index:'$(mode)'}}"

data modify storage dabsu:run dialog.dialog.actions[1].action.template set value "trigger trigger.dabsu set 1004$(null)"

##Lang
data modify storage dabsu:run dialog.dialog.title set from storage dabsu:run lang.this.multi_property
data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.batch_edit_page_set_properties_2
data modify storage dabsu:run dialog.dialog.inputs[0].label.text set from storage dabsu:run lang.this.temp_modify_selection_4
data modify storage dabsu:run dialog.dialog.inputs[0].options[0].display.text set from storage dabsu:run lang.this.menu_equipment_overview_3
data modify storage dabsu:run dialog.dialog.inputs[0].options[1].display.text set from storage dabsu:run lang.this.batch_edit_page_set_properties_1


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog