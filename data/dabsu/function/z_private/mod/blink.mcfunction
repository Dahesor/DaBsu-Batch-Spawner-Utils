execute if score #loop_20 calc.dabsu matches 0..9 run return fail

execute unless score %modifying calc.dabsu matches 1.. align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__selected
execute if score %modifying calc.dabsu matches 1.. align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__modifying