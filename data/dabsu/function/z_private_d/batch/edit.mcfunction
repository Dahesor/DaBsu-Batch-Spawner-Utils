function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/batch_home

data modify storage dabsu:run dialog.dialog.body[0].contents set value []
data modify storage dabsu:run dialog.dialog.body[0].contents append from storage dabsu:run lang.this.batch_options
execute if entity @s[tag=dabsu._edit] run data remove storage dabsu:run dialog.dialog.exit_action
#execute if entity @s[tag=dabsu._edit] run data modify storage dabsu:run dialog.dialog.body[0].contents set value ["§b§lBatch§r Edit Options (",{keybind:"key.sneak",color:"green"}," + ",{keybind:"key.drop",color:"green"}," to remove the wand)"]

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog