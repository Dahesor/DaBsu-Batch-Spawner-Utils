execute store result score $ty calc.dabsu run data get storage dabsu:run Chunks[0].Objects[0].Pos.y

execute unless function dabsu:z_private/select/rectangle/logic/point/y run return fail

scoreboard players add %select_count calc.dabsu 1
data modify storage dabsu:run Selected[0].Chunks[0].Objects append from storage dabsu:run Chunks[0].Objects[0]