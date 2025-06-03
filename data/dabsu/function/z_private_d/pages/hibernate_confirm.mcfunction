function dabsu:z_private/text/get
function dabsu:z_private_d/templates/confirm

data modify storage dabsu:run dialog.dialog.body.contents append from storage dabsu:run lang.this.hibernation_info
data modify storage dabsu:run dialog.dialog.yes.action set value {type:"run_command",command:"/trigger trigger.dabsu set 77"}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog