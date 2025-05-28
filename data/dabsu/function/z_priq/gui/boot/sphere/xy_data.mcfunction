data modify storage dabsu:run shape.list set value [\
    {left_rotation:[0f,0f,0f,1f],translation:[0f,-0.195090322f,0.9837852804f]},\
    {left_rotation:[0.5f,0f,0f,1f],translation:[0f,-0.8314696123f,0.555570233f]},\
    {left_rotation:[1f,0f,0f,1f],translation:[0f,-0.9807852804f,-0.1f]},\
    {left_rotation:[-0.5f,0f,0f,1f],translation:[0f,-0.8314696123f,-0.555570233f]},\
    {left_rotation:[0f,0f,0f,1f],translation:[0f,-0.195090322f,-0.9857852804f]},\
    {left_rotation:[0.4f,0f,0f,1f],translation:[0f,0.555570233f,-0.8314696123f]},\
    {left_rotation:[1f,0f,0f,1f],translation:[0f,0.9707852804f,-0.105090322f]},\
    {left_rotation:[-0.4f,0f,0f,1f],translation:[0f,0.555570233f,0.8314696123f]},\
]
data modify storage dabsu:run shape.list[] merge value {scale:[0.1f,0.42f,0.1f],right_rotation:[0f,0f,0f,1f]}

scoreboard players set $math calc.dabsu 8
function dabsu:z_priq/gui/boot/sphere/math/xy_scale