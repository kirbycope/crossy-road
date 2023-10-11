# Initialize new players
execute as @a[tag=!init] run function crossy:init-player

# Teleport chicken
tp @e[type=minecraft:chicken] 7 3 47

# Remove chicken eggs
kill @e[type=item]

# Fill Tunnel entrances
fill 16 3 22 16 8 32 minecraft:black_concrete
fill 16 3 36 16 8 40 minecraft:black_concrete
fill 16 3 71 16 8 82 minecraft:black_concrete
fill 16 3 85 16 8 89 minecraft:black_concrete
fill 16 3 99 16 8 103 minecraft:black_concrete
fill 16 3 110 16 8 114 minecraft:black_concrete
fill 16 3 118 16 8 128 minecraft:black_concrete
fill 16 3 161 16 8 171 minecraft:black_concrete
fill -16 3 22 -16 8 32 minecraft:black_concrete
fill -16 3 36 -16 8 40 minecraft:black_concrete
fill -16 3 71 -16 8 82 minecraft:black_concrete
fill -16 3 85 -16 8 89 minecraft:black_concrete
fill -16 3 99 -16 8 103 minecraft:black_concrete
fill -16 3 110 -16 8 114 minecraft:black_concrete
fill -16 3 118 -16 8 128 minecraft:black_concrete
fill -16 3 161 -16 8 171 minecraft:black_concrete

## Blue car
# Every 2 seconds spawn an armor stand to serve as the anchor for the blueCar at the blueCar anchor
# execute at @a as @e[tag=blueSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["blueCar"]}
# Move the blueCar armor stand
execute as @e[tag=blueCar] at @s run tp @s ~ ~ ~-0.4
# Kill anyone the blueCar hit
execute as @e[tag=blueCar] at @s positioned ~-1 ~-1 -13 run kill @s[dx=3,dy=5,dz=-5]
# Clone the blocks at the blueCar's position
execute as @e[tag=blueCar] at @s run clone -28 -13 -5 -24 -10 3 ~-2 ~2 ~-4

# clone blue car blocks
#clone  11 -63 5 3 -60 9
