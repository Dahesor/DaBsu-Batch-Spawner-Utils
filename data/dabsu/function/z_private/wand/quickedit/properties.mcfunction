function dabsu:z_private_d/templates/single_settings

data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_private_d/lines/initial/props with storage dabsu:run spawner



#Edit
data modify storage dabsu:run run.cmd set value "parse/properties {form:{SpawnCount:$(SpawnCount),SpawnRange:$(SpawnRange),RequiredPlayerRange:$(RequiredPlayerRange),MinSpawnDelay:$(MinSpawnDelay),MaxSpawnDelay:$(MaxSpawnDelay),MaxNearbyEntities:$(MaxNearbyEntities)}}"
function dabsu:z_private_d/lines/cmd/quick_run with storage dabsu:run run
data modify storage dabsu:run dialog.dialog.actions[0].on_submit.template set from storage dabsu:run final


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog