clear @s *[custom_data~{dabsu:{cart:{button:{}}}}]
playsound ui.button.click master @s ~ ~ ~ 0.5 1.5

execute as @e[type=chest_minecart,tag=dabsu.inv,distance=..25] run function dabsu:z_private/cart/trigger/specialize