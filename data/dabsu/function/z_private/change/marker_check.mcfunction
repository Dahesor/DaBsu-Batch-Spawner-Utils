execute unless loaded ~ ~ ~ run return fail

function dabsu:z_private/mod/blink

execute if entity @s[tag=dabsu.analyzing] run return fail
execute if entity @a[distance=..8] if block ~ ~ ~ spawner run return run function dabsu:z_private/change/check_change

execute if block ~ ~ ~ spawner run return 1

execute if entity @s[tag=dabsu.quick_edit] run return run function dabsu:z_private/change/update/quick_edit

function dabsu:z_private/change/destory/cleanup