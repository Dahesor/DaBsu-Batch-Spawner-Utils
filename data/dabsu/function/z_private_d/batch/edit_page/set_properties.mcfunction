execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/single_settings

data modify storage dabsu:run dialog.dialog.title set value "§6[DaBsu]§r Edit §nMultiple§r Spawners' Properties..."
data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:"§dEnter nothing to leave value unchanged",width:400}]

data modify storage dabsu:run dialog.dialog.inputs prepend value {type:"minecraft:single_option",key:"mode",options:[{id:"replace",initial:1b,display:{text:"Replace",color:"#d6fff5"}},{id:"adjust",initial:0b,display:{text:"Add or Subtract",color:"#e8ffca"}}],label:{text:"Mode"},label_visible:true,width:200}

data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set value "function dabsu:z_private_d/batch/link/edit_properties {form:{SpawnCount:'$(SpawnCount)',SpawnRange:'$(SpawnRange)',RequiredPlayerRange:'$(RequiredPlayerRange)',MinSpawnDelay:'$(MinSpawnDelay)',MaxSpawnDelay:'$(MaxSpawnDelay)',MaxNearbyEntities:'$(MaxNearbyEntities)',index:'$(mode)'}}"

data modify storage dabsu:run dialog.dialog.actions[1].on_submit.template set value "trigger trigger.dabsu set 1004$(null)"

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog