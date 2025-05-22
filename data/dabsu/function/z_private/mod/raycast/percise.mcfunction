execute if block ^ ^ ^ spawner run return run function dabsu:z_private/mod/raycast/specialize
execute unless entity @s[distance=..10] if score $ray calc.dabsu matches 2 if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run return run function dabsu:z_private_dialog/batch/home
#particle dust{color:[1,1,1],scale:0.05} ~ ~ ~ 0 0 0 0 0 force
execute positioned ^ ^ ^0.04 run return run function dabsu:z_private/mod/raycast/percise