data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/gui/edit/get_current"}
execute if entity @s[tag=dabsu.trial_marker] run data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/gui/edit/get_current_trial"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed



execute unless entity @s[tag=dabsu.trial_marker] store result score #step_x calc.dabsu run data get storage dabsu:run spawner.RequiredPlayerRange
function dabsu:z_priq/gui/sound/p_scale