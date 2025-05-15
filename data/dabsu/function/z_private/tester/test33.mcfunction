data modify storage dabsu:run run.UUID set from storage dabsu:run test[0]
data modify storage dabsu:run test append from storage dabsu:run test[0]
data remove storage dabsu:run test[0]
function dabsu:z_private/tester/add_1 with storage dabsu:run run