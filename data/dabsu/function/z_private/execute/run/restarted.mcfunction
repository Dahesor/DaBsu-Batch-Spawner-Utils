scoreboard players set %modifying calc.dabsu 0
scoreboard players set !busy calc.dabsu 0
bossbar remove dabsu:modify
data modify storage dabsu:run Selected set value []
scoreboard players reset $restarting calc.dabsu
execute if score %failed_obj calc.dabsu matches 1.. run tellraw @a ["§6[DaBsu] Warning: ",{score:{name:"%failed_obj",objective:"calc.dabsu"},color:"aqua"},"§c object(s) could not be restarted. Check logs above."]