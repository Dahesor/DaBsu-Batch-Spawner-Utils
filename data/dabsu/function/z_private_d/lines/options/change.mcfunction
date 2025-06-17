playsound ui.button.click ui @s ~ ~ ~ 0.8 1.34 0.8
execute if score #trigger trigger.dabsu matches 1401 run function dabsu:z_private_d/lines/options/toggle_actionbar
execute if score #trigger trigger.dabsu matches 1402 run function dabsu:z_private_d/lines/options/toggle_subtitle
execute if score #trigger trigger.dabsu matches 1403 run function dabsu:z_private_d/lines/options/toggle_active_range
execute if score #trigger trigger.dabsu matches 1404 run function dabsu:z_private_d/lines/options/toggle_cname
execute if score #trigger trigger.dabsu matches 1410 run scoreboard players remove run.SelectionRate Option.dabsu 250
execute if score #trigger trigger.dabsu matches 1411 run scoreboard players add run.SelectionRate Option.dabsu 250
execute if score #trigger trigger.dabsu matches 1412 run scoreboard players remove run.ChunkReadingRate Option.dabsu 1
execute if score #trigger trigger.dabsu matches 1413 run scoreboard players add run.ChunkReadingRate Option.dabsu 1


execute if score run.SelectionRate Option.dabsu matches ..500 run scoreboard players set run.SelectionRate Option.dabsu 500
execute if score run.SelectionRate Option.dabsu matches 5000.. run scoreboard players set run.SelectionRate Option.dabsu 5000
execute if score run.ChunkReadingRate Option.dabsu matches ..1 run scoreboard players set run.ChunkReadingRate Option.dabsu 1
execute if score run.ChunkReadingRate Option.dabsu matches 24.. run scoreboard players set run.ChunkReadingRate Option.dabsu 24

function dabsu:z_private_d/pages/global_settings