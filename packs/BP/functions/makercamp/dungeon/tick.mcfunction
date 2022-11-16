# © Makercamp SRLS, 2022
# authors: Fabrimat
# description: Main tick function
# called by: tick.json

scoreboard players add control ticks 1

scoreboard players add @a delay 1
scoreboard players set @a[scores={delay=2}] delay 0

execute @a[scores={delay=0}] ~ ~ ~ execute @e[tag=waypoint, r=7] ~ ~ ~ function makercamp/dungeon/waypoint