data modify storage dabsu:run shape.list set value [\
    {left_rotation:[0f,0f,0f,1f],scale:[0.1f,0.42f,0.1f],translation:[0.9907852804f,-0.195090322f,0f]},\
    {left_rotation:[0f,0f,-0.5f,1f],scale:[0.1f,0.42f,0.1f],translation:[0.55557023f,-0.83146961f,0f]},\
    {left_rotation:[0f,0f,-1f,1f],scale:[0.1f,0.42f,0.1f],translation:[-0.10509032f,-0.980785280f,0f]},\
    {left_rotation:[0f,0f,0.5f,1f],scale:[0.1f,0.42f,0.1f],translation:[-0.55557023f,-0.83146961f,0f]},\
    {left_rotation:[0f,0f,0f,1f],scale:[0.1f,0.42f,0.1f],translation:[-0.9807852804f,-0.19509032f,0f]},\
    {left_rotation:[0f,0f,-0.45f,1f],scale:[0.1f,0.42f,0.1f],translation:[-0.8314691f,0.55557033f,0f]},\
    {left_rotation:[0f,0f,-1f,1f],scale:[0.1f,0.42f,0.1f],translation:[-0.105090322f,0.980785280f,0f]},\
    {left_rotation:[0f,0f,0.4f,1f],scale:[0.1f,0.42f,0.1f],translation:[0.831469612f,0.555570233f,0f]},\
]
data modify storage dabsu:run shape.list[] merge value {scale:[0.1f,0.42f,0.1f],right_rotation:[0f,0f,0f,1f]}

scoreboard players set $math calc.dabsu 8
function dabsu:z_priq/gui/boot/sphere/math/yz_scale


