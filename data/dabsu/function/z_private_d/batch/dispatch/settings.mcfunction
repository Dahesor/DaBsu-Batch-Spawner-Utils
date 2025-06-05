function dabsu:z_private_d/uid/get

playsound ui.button.click master @s ~ ~ ~ 0.8 1.3 0.8

execute if score #trigger trigger.dabsu matches 1310 run data modify storage dabsu:user data[0].settings.PrimaryQuickAction set value "property"
execute if score #trigger trigger.dabsu matches 1311 run data modify storage dabsu:user data[0].settings.PrimaryQuickAction set value "potential"
execute if score #trigger trigger.dabsu matches 1314 run data modify storage dabsu:user data[0].settings.disableBatchRightClick set value false
execute if score #trigger trigger.dabsu matches 1315 run data modify storage dabsu:user data[0].settings.disableBatchRightClick set value true

execute if score #trigger trigger.dabsu matches 1318 run data modify storage dabsu:user data[0].settings.disableDisplayTiles set value false
execute if score #trigger trigger.dabsu matches 1319 run data modify storage dabsu:user data[0].settings.disableDisplayTiles set value true
execute if score #trigger trigger.dabsu matches 1320 run return run function dabsu:z_private_d/pages/lang


function dabsu:z_private_d/pages/personal_settings