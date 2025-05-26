data merge entity @s {block_state:{Name:"light_blue_stained_glass_pane",Properties:{east:"true",west:"true"}},Tags:["dabsu.analyz_marker"],transformation:{right_rotation:[1.0f,0.0f,0.0f,1.0f],translation:[0.0d,0.6d,0.0d]}}
scoreboard players set @s highlight.dabsu 0
execute store result score @s uid.dabsu run data get storage dabsu:run data.from_user.uid
data modify entity @s data set from storage dabsu:run data