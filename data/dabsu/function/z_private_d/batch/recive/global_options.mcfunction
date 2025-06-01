dialog clear @s

scoreboard players set disableActionbar Option.dabsu 0
scoreboard players set disableSubtitle Option.dabsu 0
execute if score #input input.dabsu matches ..-1 run scoreboard players set disableActionbar Option.dabsu -1
execute if score #input input.dabsu matches ..-1 run scoreboard players operation #input input.dabsu *= #-1 calc.dabsu
scoreboard players operation #temp Option.dabsu = #input input.dabsu
scoreboard players operation #temp Option.dabsu /= #100000 calc.dabsu
execute if score #temp Option.dabsu matches ..2 run scoreboard players set #temp Option.dabsu 2
execute if score #temp Option.dabsu matches 31.. run scoreboard players set #temp Option.dabsu 30
scoreboard players operation run.ChunkReadingRate Option.dabsu = #temp Option.dabsu

scoreboard players operation #temp Option.dabsu = #input input.dabsu
scoreboard players operation #temp Option.dabsu %= #100000 calc.dabsu
scoreboard players operation #temp Option.dabsu /= #10 calc.dabsu
execute if score #temp Option.dabsu matches ..1000 run scoreboard players set #temp Option.dabsu 1000
execute if score #temp Option.dabsu matches 5001.. run scoreboard players set #temp Option.dabsu 5000
scoreboard players operation run.SelectionRate Option.dabsu = #temp Option.dabsu

scoreboard players operation #temp Option.dabsu = #input input.dabsu
scoreboard players operation #temp Option.dabsu %= #10 calc.dabsu
execute if score #temp Option.dabsu matches 1 run scoreboard players set disableSubtitle Option.dabsu -1