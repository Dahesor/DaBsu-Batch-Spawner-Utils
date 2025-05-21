execute store result score #this calc.dabsu run data get storage dabsu:save item[1].id
execute unless score #this calc.dabsu < @s calc.dabsu run return fail

scoreboard players operation #this calc.dabsu = @s calc.dabsu
function dabsu:z_private/cart/sync/attempt_delete