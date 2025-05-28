dialog clear @s
data modify storage dabsu:run form set from storage dabsu:user data[0].form
data modify storage dabsu:run form.form set from storage dabsu:run form
execute as @e[type=marker,distance=..0.2,limit=1,tag=dabsu.marker] run function dabsu:z_private/modify/multipot/light with storage dabsu:run form