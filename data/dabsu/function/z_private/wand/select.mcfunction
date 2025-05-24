execute as @e[type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_private/select/add_self
execute if entity @a[distance=..20] align xyz summon block_display run function dabsu:z_private/mod/buffer_select/__selected
execute at @s run playsound ui.button.click master @s ~ ~ ~ 0.5 1.6 0.5
function dabsu:z_private/text/name/selected