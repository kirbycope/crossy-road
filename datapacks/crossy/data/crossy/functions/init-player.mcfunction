# Scoreboards for timing
scoreboard objectives add timer dummy
scoreboard players add @s timer 0

# Move to start
tp @s 0 3 14

# Set max health to 0.1
attribute @s minecraft:generic.max_health base set 0.1

# Tag the player so this only runs once
tag @s add init
