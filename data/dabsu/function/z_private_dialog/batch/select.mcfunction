function dabsu:z_private_dialog/templates/select_spawners

function dabsu:z_private_dialog/uid/get

# Pos 1
data modify storage dabsu:run run set value {x:"",y:"",x:""}
execute if data storage dabsu:user data[0].select.pos1 run data modify storage dabsu:run run set from storage dabsu:user data[0].select.pos1
function dabsu:z_private_dialog/batch/initials/select_pos with storage dabsu:run run
execute if data storage dabsu:user data[0].select.pos1 run data modify storage dabsu:run dialog.dialog.inputs[2].initial set from storage dabsu:run final

# Pos 2
data modify storage dabsu:run run set value {x:"",y:"",x:""}
execute if data storage dabsu:user data[0].select.pos2 run data modify storage dabsu:run run set from storage dabsu:user data[0].select.pos2
function dabsu:z_private_dialog/batch/initials/select_pos with storage dabsu:run run
execute if data storage dabsu:user data[0].select.pos2 run data modify storage dabsu:run dialog.dialog.inputs[3].initial set from storage dabsu:run final


function dabsu:z_private_dialog/pages/show_any with storage dabsu:run dialog