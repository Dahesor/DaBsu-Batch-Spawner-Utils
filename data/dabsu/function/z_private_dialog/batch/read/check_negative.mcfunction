scoreboard players set #neg calc.dabsu 0
data modify storage dabsu:run char.negative set string storage dabsu:run string_to_num 0 1
execute if data storage dabsu:run char{negative:"-"} run scoreboard players set #neg calc.dabsu 1
execute if data storage dabsu:run char{negative:"-"} run data modify storage dabsu:run string_to_num set string storage dabsu:run string_to_num 1