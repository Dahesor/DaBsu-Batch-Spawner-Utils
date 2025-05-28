scoreboard players operation #math.private.a calc.dabsu = #math.sqrt calc.dabsu
scoreboard players set #math.private.b calc.dabsu 1

execute if score #math.private.a calc.dabsu matches 2.. run function dabsu:z_priq/gui/boot/sphere/math/sqrt_loop

scoreboard players operation #math.sqrt calc.dabsu = #math.private.a calc.dabsu
return run scoreboard players get #math.sqrt calc.dabsu