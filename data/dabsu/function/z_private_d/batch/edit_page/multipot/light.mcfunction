function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy


function dabsu:z_private_d/templates/light_rules

data modify storage dabsu:run dialog.dialog.title set value {text:"§6[DaBsu]§r Overwrite All Light Rules..."}

#lang
data modify storage dabsu:run dialog.dialog.title.text set from storage dabsu:run lang.this.batch_edit_page_multipot_light_1

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog