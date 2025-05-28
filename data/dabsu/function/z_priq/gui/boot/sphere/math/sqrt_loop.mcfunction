scoreboard players operation #math.private.a calc.dabsu += #math.private.b calc.dabsu
scoreboard players operation #math.private.a calc.dabsu /= #2 calc.dabsu
scoreboard players operation #math.private.b calc.dabsu = #math.sqrt calc.dabsu
scoreboard players operation #math.private.b calc.dabsu /= #math.private.a calc.dabsu
execute if score #math.private.a calc.dabsu > #math.private.b calc.dabsu run function dabsu:z_priq/gui/boot/sphere/math/sqrt_loop