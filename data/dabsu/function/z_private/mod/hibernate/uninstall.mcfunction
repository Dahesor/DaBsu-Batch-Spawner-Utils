data modify storage dabsu:sys hibernate set value true
scoreboard objectives remove calc.dabsu
scoreboard objectives remove ctrl.dabsu
scoreboard objectives remove ctrl_data.dabsu
scoreboard objectives remove ctrl_wait.dabsu
scoreboard objectives remove dropWand.dabsu
scoreboard objectives remove z_hold.dabsu
scoreboard objectives remove waiting.dabsu
scoreboard objectives remove uid.dabsu
scoreboard objectives remove trigger.dabsu
scoreboard objectives remove timeStamp.dabsu
scoreboard objectives remove selected.dabsu
scoreboard objectives remove register_range.dabsu
scoreboard objectives remove Option.dabsu
scoreboard objectives remove leave_game.dabsu
scoreboard objectives remove lang.dabsu
scoreboard objectives remove input.dabsu
scoreboard objectives remove highlight.dabsu
scoreboard objectives remove dabsu.gu.uuid.0
scoreboard objectives remove dabsu.gu.uuid.1
scoreboard objectives remove dabsu.gu.uuid.2
scoreboard objectives remove dabsu.gu.uuid.3
data remove storage dabsu:user UID_GET_
data remove storage dabsu:user UserDataTemp
data remove storage dabsu:user data
data remove storage dabsu:run xz
data remove storage dabsu:run type
data remove storage dabsu:run this
data remove storage dabsu:run text
data remove storage dabsu:run templist
data remove storage dabsu:run temp
data remove storage dabsu:run temp2
data remove storage dabsu:run string_to_num
data remove storage dabsu:run spawner
data remove storage dabsu:run shape
data remove storage dabsu:run run_custom
data remove storage dabsu:run run
data remove storage dabsu:run ram
data remove storage dabsu:run proceed
data remove storage dabsu:run potential
data remove storage dabsu:run parsing
data remove storage dabsu:run num
data remove storage dabsu:run new_name
data remove storage dabsu:run nbt_to_string
data remove storage dabsu:run nbt
data remove storage dabsu:run lang
data remove storage dabsu:run joint
data remove storage dabsu:run item
data remove storage dabsu:run item_list
data remove storage dabsu:run input
data remove storage dabsu:run index
data remove storage dabsu:run in
data remove storage dabsu:run id
data remove storage dabsu:run hold
data remove storage dabsu:run form
data remove storage dabsu:run final
data remove storage dabsu:run exe
data remove storage dabsu:run equipment
data remove storage dabsu:run element
data remove storage dabsu:run dialog
data remove storage dabsu:run data
data remove storage dabsu:run char
data remove storage dabsu:run buffer
data remove storage dabsu:run attribute
data remove storage dabsu:run att
data remove storage dabsu:run Provided
data remove storage dabsu:run Queue
data remove storage dabsu:run Selected
data remove storage dabsu:run Main
data remove storage dabsu:run Chunks

kill @e[tag=dabsu.marker,type=marker]
kill @e[tag=dabsu.displayer,type=#dabsu:display]
kill @e[tag=dabsu.ctrl,type=#dabsu:display]
#clear @a *[custom_data~{dabsu:{is_wand:1b}}]