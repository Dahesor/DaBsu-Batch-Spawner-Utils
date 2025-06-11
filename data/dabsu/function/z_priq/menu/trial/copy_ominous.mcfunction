playsound ui.button.click master @s ~ ~ ~ 1 1.8 1

scoreboard players operation #this uid.dabsu = @s uid.dabsu
data modify storage dabsu:run trial set value {}
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.trial_marker,distance=0..] if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/menu/trial/get_config
#Validate
execute unless data storage dabsu:run trial.ominous_config run return fail
data modify storage dabsu:run temp2 set value {string:""}
data modify storage dabsu:run temp2.string set string storage dabsu:run trial.ominous_config
execute unless data storage dabsu:run temp2{string:""} run return fail

#Convert
data modify storage dnt:ram in set from storage dabsu:run trial.ominous_config
function dnt:to_json

#New Dialog
function dabsu:z_priq/menu/trial/body
scoreboard players operation #this uid.dabsu = @s uid.dabsu
data modify storage dabsu:run trial set value {}
execute as @e[type=marker,tag=dabsu.marker,tag=dabsu.trial_marker,distance=0..] if score @s uid.dabsu = #this uid.dabsu at @s run function dabsu:z_priq/menu/trial/get_config
function dabsu:z_priq/menu/trial/normal

data modify storage dabsu:run dialog.dialog.body[6].contents set value {text:"LANG??",underlined:true,color:"yellow",bold:true,hover_event:{action:"show_text",value:""},click_event:{action:"copy_to_clipboard",value:""}}
data modify storage dabsu:run dialog.dialog.body[6].contents.text set value "Copy Export Result"
data modify storage dabsu:run dialog.dialog.body[6].contents.hover_event.value set value "§eClick to copy the result"
data modify storage dabsu:run dialog.dialog.body[6].contents.click_event.value set from storage dnt:ram out


function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.8 1