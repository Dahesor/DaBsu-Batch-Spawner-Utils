$data modify storage dabsu:user UserDataTemp set from storage dabsu:user data[{uid:$(UID)}]
$data remove storage dabsu:user data[{uid:$(UID)}]
data modify storage dabsu:user data prepend from storage dabsu:user UserDataTemp