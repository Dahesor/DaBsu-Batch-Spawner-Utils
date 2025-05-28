data modify storage dabsu:run shape.list set value [\
    {left_rotation:[0f,0f,0f,1f],translation:[0.9807852804f,0f,-0.195090322f]},\
    {left_rotation:[0f,0.25f,0f,1f],translation:[0.8314696123f,0f,-0.555570233f]},\
    {left_rotation:[0f,0.5f,0f,1f],translation:[0.555570233f,0f,-0.8314696123f]},\
    {left_rotation:[0f,0.75f,0f,1f],translation:[0.195090322f,0f,-0.9807852804f]},\
    {left_rotation:[0f,1f,0f,1f],translation:[-0.105090322f,0f,-0.9807852804f]},\
    {left_rotation:[0f,-0.69f,0f,1f],translation:[-0.195090322f,0f,-0.9807852804f]},\
    {left_rotation:[0f,-0.4f,0f,1f],translation:[-0.555570233f,0f,-0.8314696123f]},\
    {left_rotation:[0f,-0.25f,0f,1f],translation:[-0.8314696123f,0f,-0.555570233f]},\
    {left_rotation:[0f,0f,0f,1f],translation:[-0.9807852804f,0f,-0.195090322f]},\
    {left_rotation:[0f,0.23f,0f,1f],translation:[-0.9807852804f,0f,0.195090322f]},\
    {left_rotation:[0f,0.38f,0f,1f],translation:[-0.8314696123f,0f,0.555570233f]},\
    {left_rotation:[0f,0.75f,0f,1f],translation:[-0.555570233f,0f,0.8314696123f]},\
    {left_rotation:[0f,1f,0f,1f],translation:[-0.075090322f,0f,0.9707852804f]},\
    {left_rotation:[0f,-0.75f,0f,1f],translation:[0.555570233f,0f,0.8314696123f]},\
    {left_rotation:[0f,-0.45f,0f,1f],translation:[0.8314696123f,0f,0.555570233f]},\
    {left_rotation:[0f,-0.2f,0f,1f],translation:[0.9807852804f,0f,0.195090322f]},\
    {left_rotation:[0f,-1f,0f,1f],translation:[0.097f,0f,-0.9857852804f]},\
    {left_rotation:[0f,-1f,0f,1f],translation:[0.126090322f,0f,0.9597852804f]},\
]
data modify storage dabsu:run shape.list[] merge value {scale:[0.1f,0.1f,0.42f],right_rotation:[0f,0f,0f,1f]}


scoreboard players set $math calc.dabsu 18
function dabsu:z_priq/gui/boot/sphere/math/scale_loop
