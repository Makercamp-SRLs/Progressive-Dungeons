# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Paste in the world the first suitable structure
# called by: ./waypoint

tellraw @a[tag=debug] {"rawtext":[{"text":"[Debug] Paste first suitable structure"}]}

execute @s[tag=!ran, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/forward
execute @s[tag=!ran, tag=!left_obstruct] ~ ~ ~ function makercamp/dungeon/structure/turn_left
execute @s[tag=!ran, tag=!right_obstruct] ~ ~ ~ function makercamp/dungeon/structure/turn_right
execute @s[tag=!ran, tag=!left_obstruct, tag=!right_obstruct] ~ ~ ~ function makercamp/dungeon/structure/wye
execute @s[tag=!ran, tag=!left_obstruct, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/left_forward
execute @s[tag=!ran, tag=!right_obstruct, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/right_forward
execute @s[tag=!ran, tag=!left_obstruct, tag=!right_obstruct, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/three_way