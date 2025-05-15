$execute store result score %forceload calc.dabsu run forceload query $(x) $(z)
execute if score %forceload calc.dabsu matches 1.. run return run data modify storage dabsu:run parsing.buffer[-1].loaded set value 1b

$forceload add $(x) $(z)