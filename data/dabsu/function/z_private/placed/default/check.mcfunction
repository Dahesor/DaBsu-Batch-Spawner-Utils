execute store result score $length calc.dabsu run data get storage dabsu:run spawner.SpawnPotentials
execute unless score $length calc.dabsu matches 1.. run return fail

function dabsu:z_private/placed/default/looper