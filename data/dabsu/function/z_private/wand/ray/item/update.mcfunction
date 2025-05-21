execute as @e[type=item_display,tag=dabsu.displayer] if score @s uid.dabsu = #this uid.dabsu run kill
data modify storage dabsu:run equipment set value {}
data modify storage dabsu:run equipment set from storage dabsu:run element.data.entity.equipment

execute if data storage dabsu:run equipment.head.id run function dabsu:z_private/wand/ray/item/equips/head
execute if data storage dabsu:run equipment.chest.id run function dabsu:z_private/wand/ray/item/equips/chest
execute if data storage dabsu:run equipment.legs.id run function dabsu:z_private/wand/ray/item/equips/legs
execute if data storage dabsu:run equipment.feet.id run function dabsu:z_private/wand/ray/item/equips/boots
execute if data storage dabsu:run equipment.mainhand.id run function dabsu:z_private/wand/ray/item/equips/mainhand
execute if data storage dabsu:run equipment.offhand.id run function dabsu:z_private/wand/ray/item/equips/offhand
execute if data storage dabsu:run equipment.body.id run function dabsu:z_private/wand/ray/item/equips/body