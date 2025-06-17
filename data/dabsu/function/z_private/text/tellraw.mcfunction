$data modify storage dabsu:run text set value $(text)

function dabsu:z_private/text/get

data modify storage dabsu:run run set value {key:""}
data modify storage dabsu:run run.key set from storage dabsu:run text.text
function dabsu:z_private/text/proc/replace with storage dabsu:run run