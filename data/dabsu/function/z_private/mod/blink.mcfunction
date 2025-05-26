execute unless score @s selected.dabsu matches 1.. unless entity @s[tag=dabsu.quick_edit] run return fail

execute if entity @s[tag=!dabsu.quick_edit,scores={selected.dabsu=1..}] run return run execute if score #loop_20 calc.dabsu matches 10.. align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__selected

execute if score @s selected.dabsu matches 1.. run return run execute unless score #loop_20 calc.dabsu matches 0..9 align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__selected_modify

execute if entity @s[tag=dabsu.quick_edit] if score #loop_20 calc.dabsu matches 0..9 align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__modifying