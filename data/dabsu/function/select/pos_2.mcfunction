# Set position of the second point of the selection box
# 设置选择框的第二个角落的坐标

execute align xyz summon marker run data merge entity @s {Tags:["dabsu.temp"]}
data modify storage dabsu:run run set from entity @e[type=marker,limit=1,tag=dabsu.temp] Pos
kill @e[type=marker,tag=dabsu.temp]
execute store result score $dx calc.dabsu run data get storage dabsu:run run[0]
execute store result score $dy calc.dabsu run data get storage dabsu:run run[1]
execute store result score $dz calc.dabsu run data get storage dabsu:run run[2]

function dabsu:z_private/text/tellraw {text:{text:"pos2_set",color:"light_purple"}}
tellraw @a [{text:"[DaBsu] ",color:"gray"},{selector:"@s",color:"white"}," --> ", {nbt:"text",storage:"dabsu:run",interpret:true}, {text:"(",color:"white"},{score:{name:"$dx",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$dy",objective:"calc.dabsu"},color:"gold"},{text:", ",color:"white"},{score:{name:"$dz",objective:"calc.dabsu"},color:"gold"},{text:")",color:"white"}]