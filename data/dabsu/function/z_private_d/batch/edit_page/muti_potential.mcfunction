function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

execute store result score #SelectCount calc.dabsu if data storage dabsu:run Selected[].Chunks[].Objects[]
execute unless score #SelectCount calc.dabsu matches 600.. run function dabsu:z_private/mod/refactor/reselect/start
execute if score $SelectedType selected.dabsu matches 0.. run return run function dabsu:z_private_d/batch/edit_page/samepot/overview

function dabsu:z_private_d/templates/edit/multi_potentials

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog