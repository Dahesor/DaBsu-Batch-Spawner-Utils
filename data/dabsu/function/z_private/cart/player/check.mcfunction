execute if items entity @s container.* *[custom_data~{dabsu:{cart:{stored:{}}}}] run return run function dabsu:z_private/cart/player/obtain
execute if items entity @s player.cursor *[custom_data~{dabsu:{cart:{stored:{}}}}] run return run function dabsu:z_private/cart/player/obtain

execute if items entity @s container.* *[custom_data~{dabsu:{cart:{button:{}}}}] run return run function dabsu:z_private/cart/player/button
execute if items entity @s player.cursor *[custom_data~{dabsu:{cart:{button:{}}}}] run return run function dabsu:z_private/cart/player/button