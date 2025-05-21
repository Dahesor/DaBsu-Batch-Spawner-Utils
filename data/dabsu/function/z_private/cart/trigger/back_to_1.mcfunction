scoreboard players operation #this calc.dabsu = @s calc.dabsu
function dabsu:z_private/cart/sync/attempt_delete

scoreboard players set @s calc.dabsu 1
function dabsu:z_private/cart/data/find_start
data modify entity @s Items set from storage dabsu:save item[0].data
function dabsu:z_private/cart/data/buttons