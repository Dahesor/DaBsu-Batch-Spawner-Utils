function dabsu:z_private_d/templates/wand_home

execute if entity @s[tag=dabsu.register] run data modify storage dabsu:run dialog.dialog.actions[{action:{type:"run_command",command:"/trigger trigger.dabsu set 1012"}}].label set value {text:"Stop Registering",color:"#ff9393"}

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog