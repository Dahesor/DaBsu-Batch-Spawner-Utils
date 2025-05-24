scoreboard players set %pierce calc.dabsu 0
execute if score @s register_range.dabsu matches ..-1 run scoreboard players set %pierce calc.dabsu 1

scoreboard players operation %var calc.dabsu = @s register_range.dabsu
execute if score %var calc.dabsu matches ..-1 run scoreboard players operation %var calc.dabsu *= #-1 calc.dabsu

scoreboard players operation %distance calc.dabsu = %var calc.dabsu
scoreboard players operation %distance calc.dabsu %= #1000 calc.dabsu

scoreboard players operation %hit_scan calc.dabsu = %var calc.dabsu
scoreboard players operation %hit_scan calc.dabsu /= #10000 calc.dabsu

scoreboard players operation %path_scan calc.dabsu = %var calc.dabsu
scoreboard players operation %path_scan calc.dabsu /= #1000 calc.dabsu
scoreboard players operation %path_scan calc.dabsu %= #10 calc.dabsu