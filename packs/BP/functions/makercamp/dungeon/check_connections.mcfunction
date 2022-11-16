# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Check possible connections to existing paths
# called by: ./waypoint

tag @s remove f_forward
tag @s remove f_left
tag @s remove f_right
tag @s remove forced

tag @s add forward_obstruct
tag @s add left_obstruct
tag @s add right_obstruct

execute @s ~ ~-2 ~ detect ^ ^ ^25 air 0 tag @s remove forward_obstruct
execute @s ~ ~-2 ~ detect ^9 ^ ^11 air 0 tag @s remove left_obstruct
execute @s ~ ~-1 ~ detect ^-9 ^ ^11 air 0 tag @s remove right_obstruct

execute @s ~ ~-2 ~ detect ^ ^ ^25 concrete 6 tag @s add f_forward
execute @s ~ ~-2 ~ detect ^9 ^ ^11 concrete 6 tag @s add f_left
execute @s ~ ~-2 ~ detect ^-9 ^ ^11 concrete 6 tag @s add f_right
tag @s[tag=f_forward] add forced
tag @s[tag=f_left] add forced
tag @s[tag=f_right] add forced
tag @s[tag=f_forward] remove forward_obstruct
tag @s[tag=f_left] remove left_obstruct
tag @s[tag=f_right] remove right_obstruct

execute @s[tag=f_forward] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"f_forward"}]}
execute @s[tag=f_left] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"f_left"}]}
execute @s[tag=f_right] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"f_right"}]}
execute @s[tag=forward_obstruct] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"forward_obstruct"}]}
execute @s[tag=left_obstruct] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"left_obstruct"}]}
execute @s[tag=right_obstruct] ~ ~ ~ tellraw @a[tag=debug] {"rawtext":[{"text":"right_obstruct"}]}

execute @s[tag=forward_obstruct, tag=left_obstruct, tag=right_obstruct, tag=!forced, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/forced_structures/closed

execute @s[tag=forced] ~ ~ ~ function makercamp/dungeon/do_forced