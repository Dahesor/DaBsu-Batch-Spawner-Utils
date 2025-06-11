data modify storage dabsu:run spawner set value {RequiredPlayerRange:14}
data modify storage dabsu:run spawner.RequiredPlayerRange set from block ~ ~ ~ required_player_range
function dabsu:z_priq/gui/boot/reboot/player_range
execute as @e[type=#dabsu:quick_display,tag=dabsu.displayer,tag=dabsu.gui_edit,tag=dabsu.temp] run function dabsu:z_priq/gui/boot/init