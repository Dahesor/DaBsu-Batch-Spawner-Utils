data remove storage dabsu:save list[0].Slot
execute unless items entity @s container.0 * run data modify storage dabsu:save list[0].Slot set value 0b
execute unless items entity @s container.1 * run data modify storage dabsu:save list[0].Slot set value 1b
execute unless items entity @s container.2 * run data modify storage dabsu:save list[0].Slot set value 2b
execute unless items entity @s container.3 * run data modify storage dabsu:save list[0].Slot set value 3b
execute unless items entity @s container.4 * run data modify storage dabsu:save list[0].Slot set value 4b
execute unless items entity @s container.5 * run data modify storage dabsu:save list[0].Slot set value 5b
execute unless items entity @s container.6 * run data modify storage dabsu:save list[0].Slot set value 6b
execute unless items entity @s container.7 * run data modify storage dabsu:save list[0].Slot set value 7b
execute unless items entity @s container.8 * run data modify storage dabsu:save list[0].Slot set value 8b
execute unless items entity @s container.9 * run data modify storage dabsu:save list[0].Slot set value 9b
execute unless items entity @s container.10 * run data modify storage dabsu:save list[0].Slot set value 10b
execute unless items entity @s container.11 * run data modify storage dabsu:save list[0].Slot set value 11b
execute unless items entity @s container.12 * run data modify storage dabsu:save list[0].Slot set value 12b
execute unless items entity @s container.13 * run data modify storage dabsu:save list[0].Slot set value 13b
execute unless items entity @s container.14 * run data modify storage dabsu:save list[0].Slot set value 14b
execute unless items entity @s container.15 * run data modify storage dabsu:save list[0].Slot set value 15b
execute unless items entity @s container.16 * run data modify storage dabsu:save list[0].Slot set value 16b
execute unless items entity @s container.17 * run data modify storage dabsu:save list[0].Slot set value 17b
execute unless items entity @s container.18 * run data modify storage dabsu:save list[0].Slot set value 18b
execute unless items entity @s container.19 * run data modify storage dabsu:save list[0].Slot set value 19b
execute unless items entity @s container.20 * run data modify storage dabsu:save list[0].Slot set value 20b
execute unless items entity @s container.21 * run data modify storage dabsu:save list[0].Slot set value 21b
execute unless items entity @s container.22 * run data modify storage dabsu:save list[0].Slot set value 22b
execute unless items entity @s container.23 * run data modify storage dabsu:save list[0].Slot set value 23b
execute unless items entity @s container.24 * run data modify storage dabsu:save list[0].Slot set value 24b
execute unless items entity @s container.25 * run data modify storage dabsu:save list[0].Slot set value 25b
execute unless items entity @s container.26 * run data modify storage dabsu:save list[0].Slot set value 26b

execute if data storage dabsu:save list[0].Slot run data modify entity @s Items append from storage dabsu:save list[0]
execute if data storage dabsu:save list[0].Slot run data remove storage dabsu:save list[0]