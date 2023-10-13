# Scoreboards for timing
scoreboard objectives add timer dummy
scoreboard players add @s timer 0

# Move to start
tp @s 0 3 14

# Tag the player so this only runs once
tag @s add init
