function dabsu:z_private_d/uid/get
data modify storage dabsu:run proceed set value {command:"function dabsu:z_priq/menu/home"}
data modify storage dabsu:run proceed merge from storage dabsu:user data[0].editing
function dabsu:z_priq/edit/exe with storage dabsu:run proceed