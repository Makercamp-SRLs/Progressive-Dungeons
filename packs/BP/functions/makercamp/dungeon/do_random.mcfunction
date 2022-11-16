# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Choose a random structure to paste
# called by: ./waypoint

scoreboard players operation @s random = control ticks
execute @s[rym=-45, ry=45] ~ ~ ~ scoreboard players add @s random 1
execute @s[rym=-135, ry=-45] ~ ~ ~ scoreboard players add @s random 3
execute @s[rym=45, ry=135] ~ ~ ~ scoreboard players add @s random 5
execute @s[rym=135, ry=-135] ~ ~ ~ scoreboard players add @s random 7
scoreboard players operation @s random %= control structures

#function makercamp/dungeon/random
#scoreboard players operation @s random = control random

execute @s[scores={random=0..3}, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/forward
execute @s[scores={random=4}, tag=!left_obstruct] ~ ~ ~ function makercamp/dungeon/structure/turn_left
execute @s[scores={random=5}, tag=!right_obstruct] ~ ~ ~ function makercamp/dungeon/structure/turn_right
execute @s[scores={random=6}, tag=!left_obstruct, tag=!right_obstruct] ~ ~ ~ function makercamp/dungeon/structure/wye
execute @s[scores={random=7}, tag=!left_obstruct, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/left_forward
execute @s[scores={random=8}, tag=!right_obstruct, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/right_forward
execute @s[scores={random=9}, tag=!left_obstruct, tag=!right_obstruct, tag=!forward_obstruct] ~ ~ ~ function makercamp/dungeon/structure/three_way