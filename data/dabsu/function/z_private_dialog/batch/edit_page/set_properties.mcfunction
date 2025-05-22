function dabsu:z_private_dialog/templates/single_settings

data modify storage dabsu:run dialog.dialog.title set value "§6[DaBsu]§r Edit §nMultiple§r Spawners' Properties..."
data modify storage dabsu:run dialog.dialog.body set value [{type:"plain_message",contents:"§dLeave Empty to Leave Value Unchanged"}]

data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set value "function dabsu:z_private_dialog/batch/link/edit_properties {form:{SpawnCount:'$(SpawnCount)',SpawnRange:'$(SpawnRange)',RequiredPlayerRange:'$(RequiredPlayerRange)',MinSpawnDelay:'$(MinSpawnDelay)',MaxSpawnDelay:'$(MaxSpawnDelay)',MaxNearbyEntities:'$(MaxNearbyEntities)'}}"

data modify storage dabsu:run dialog.dialog.actions[1].on_submit.template set value "trigger trigger.dabsu set 1004$(null)"

function dabsu:z_private_dialog/pages/show_any with storage dabsu:run dialog