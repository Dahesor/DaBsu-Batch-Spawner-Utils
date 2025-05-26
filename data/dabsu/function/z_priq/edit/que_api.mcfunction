##function dabsu:z_priq/edit/que_api
data modify storage dabsu:run hold set from storage dabsu:run Selected
function dabsu:z_private/select/type/api
data modify storage dabsu:run Provided set from storage dabsu:run Selected
data modify storage dabsu:run Selected set from storage dabsu:run hold

function dabsu:modify/queue