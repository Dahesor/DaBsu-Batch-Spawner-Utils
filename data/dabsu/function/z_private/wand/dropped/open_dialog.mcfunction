execute if entity @s[tag=dabsu.register] run return run function dabsu:z_private_d/batch/settings/scanning
execute if entity @s[tag=dabsu.quick_edit] run return run function dabsu:z_priq/home_menu
execute if score $SelectedType selected.dabsu matches -2147483648..2147483647 run return run function dabsu:z_private_d/batch/edit
execute unless score $SelectedType selected.dabsu matches -2147483648..2147483647 run return run function dabsu:z_private_d/batch/select