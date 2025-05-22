# Set position of the first point of the selection box
# 设置选择框的第一个角落的坐标

execute align xyz summon marker run data merge entity @s {Tags:["dabsu.temp"]}
data modify storage dabsu:run run set from entity @e[type=marker,limit=1,tag=dabsu.temp] Pos
kill @e[type=marker,tag=dabsu.temp]
execute store result score $x calc.dabsu run data get storage dabsu:run run[0]
execute store result score $y calc.dabsu run data get storage dabsu:run run[1]
execute store result score $z calc.dabsu run data get storage dabsu:run run[2]

function dabsu:z_private_dialog/uid/get
data modify storage dabsu:user data[0].select.pos1 set value {x:0,y:0,z:0}
execute store result storage dabsu:user data[0].select.pos1.x int 1 run scoreboard players get $x calc.dabsu
execute store result storage dabsu:user data[0].select.pos1.y int 1 run scoreboard players get $y calc.dabsu
execute store result storage dabsu:user data[0].select.pos1.z int 1 run scoreboard players get $z calc.dabsu


function dabsu:z_private/text/tellraw {text:{text:"pos1_set",color:"light_purple"}}
tellraw @s [{text:"[DaBsu] ",color:"gray"},{selector:"@s",color:"white"}," --> ", {nbt:"text",storage:"dabsu:run",interpret:true}, {text:"(",color:"white"},{score:{name:"$x",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$y",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$z",objective:"calc.dabsu"},color:"gold"},{text:")",color:"white"}]