# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Paste a forced structure based on available connections
# called by: ./check_connections

execute @s[tag=f_forward, tag=f_left, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/three_way

execute @s[tag=!forward_obstruct, tag=f_left, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/three_way
execute @s[tag=f_forward, tag=!left_obstruct, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/three_way
execute @s[tag=f_forward, tag=f_left, tag=!right_obstruct, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/three_way

execute @s[tag=!f_forward, tag=f_left, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/wye
execute @s[tag=f_forward, tag=!f_left, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/right_forward
execute @s[tag=f_forward, tag=f_left, tag=!f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/left_forward

execute @s[tag=!f_forward, tag=!left_obstruct, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/wye
execute @s[tag=!f_forward, tag=f_left, tag=!right_obstruct, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/wye
execute @s[tag=!f_forward, tag=f_left, tag=right_obstruct, tag=!forward_obstruct, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/left_forward
execute @s[tag=!f_forward, tag=left_obstruct, tag=f_right, tag=!forward_obstruct, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/right_forward
execute @s[tag=f_forward, tag=!left_obstruct, tag=!f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/left_forward
execute @s[tag=f_forward, tag=!f_left, tag=!right_obstruct, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/right_forward

execute @s[tag=!forward_obstruct, tag=f_left, tag=right_obstruct, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/left_forward
execute @s[tag=!forward_obstruct, tag=left_obstruct, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/right_forward

execute @s[tag=!f_forward, tag=!f_left, tag=f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/turn_right
execute @s[tag=!f_forward, tag=f_left, tag=!f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/turn_left
execute @s[tag=f_forward, tag=!f_left, tag=!f_right, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/forward

