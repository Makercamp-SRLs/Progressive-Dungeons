# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Main waypoint logic
# called by: ./tick

function makercamp/dungeon/check_forward

execute @s[tag=allow] ~ ~ ~ function makercamp/dungeon/check_connections

execute @s[tag=allow, tag=!f_ran, tag=!forced] ~ ~ ~ function makercamp/dungeon/do_random

execute @s[tag=allow, tag=!ran, tag=!f_ran] ~ ~ ~ function makercamp/dungeon/do_first

event entity @s[tag=!ran, tag=!f_ran] makercamp:despawn_event
tag @s remove ran
tag @s remove f_ran
tag @s remove allow