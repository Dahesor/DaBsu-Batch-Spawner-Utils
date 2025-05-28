dialog clear @s
function dabsu:z_private_d/uid/get
$data modify storage dabsu:run form set value $(form)

#pos1
data modify storage dabsu:run string_to_num set from storage dabsu:run form.pos1
function dabsu:z_private_d/batch/read/vec3

data modify storage dabsu:user data[0].select.pos1 set value {x:0,y:0,z:0}
execute store result storage dabsu:user data[0].select.pos1.x int 1 run scoreboard players get $x calc.dabsu
execute store result storage dabsu:user data[0].select.pos1.y int 1 run scoreboard players get $y calc.dabsu
execute store result storage dabsu:user data[0].select.pos1.z int 1 run scoreboard players get $z calc.dabsu

#pos2
data modify storage dabsu:run string_to_num set from storage dabsu:run form.pos2
function dabsu:z_private_d/batch/read/vec3

data modify storage dabsu:user data[0].select.pos2 set value {x:0,y:0,z:0}
execute store result storage dabsu:user data[0].select.pos2.x int 1 run scoreboard players get $x calc.dabsu
execute store result storage dabsu:user data[0].select.pos2.y int 1 run scoreboard players get $y calc.dabsu
execute store result storage dabsu:user data[0].select.pos2.z int 1 run scoreboard players get $z calc.dabsu

execute if data storage dabsu:run form{index:1} run function dabsu:select/cuboid/remove
execute if data storage dabsu:run form{index:2} run function dabsu:select/cuboid/intersect