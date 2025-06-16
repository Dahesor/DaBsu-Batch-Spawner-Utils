execute if score MarkerActiveRange Option.dabsu matches -1 if entity @a[distance=..30] run return run function dabsu:z_private/change/marker_check
execute if score MarkerActiveRange Option.dabsu matches 0 if entity @a[distance=..50] run return run function dabsu:z_private/change/marker_check
execute if score MarkerActiveRange Option.dabsu matches 1 if entity @a[distance=..80] run return run function dabsu:z_private/change/marker_check
execute if score MarkerActiveRange Option.dabsu matches 2 if entity @a[distance=..120] run return run function dabsu:z_private/change/marker_check
execute if score MarkerActiveRange Option.dabsu matches -2 run return run function dabsu:z_private/change/marker_check
execute if entity @a[distance=..50] run return run function dabsu:z_private/change/marker_check