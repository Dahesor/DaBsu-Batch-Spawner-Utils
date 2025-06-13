data remove storage dabsu:run Dimensions[].Chunks[].Objects[].sUUID
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].UUID
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].type
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].mark
scoreboard players set !busy calc.dabsu 0
scoreboard players set %modifying calc.dabsu 0
say Sleep Completed
bossbar remove dabsu:modify
function dabsu:z_private/mod/hibernate/uninstall
execute if score %failed_obj calc.dabsu matches 1.. run tellraw @a ["§6[DaBsu] Warning: ",{score:{name:"%failed_obj",objective:"calc.dabsu"},color:"aqua"},"§c object(s) could not be removed. Check logs above.\n§c - You might have to load the chunks and remove them manually:\n§6    - kill @e[type=marker,tag=dabsu.marker]"]