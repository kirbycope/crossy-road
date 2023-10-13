# Initialize new players
execute as @a[tag=!init] run function crossy:init-player

# Teleport chicken
tp @e[type=minecraft:chicken] 7 3.1 47

# Remove chicken eggs
kill @e[type=item]

## Blue car
# Every 2 seconds spawn an armor stand to serve as the anchor for the blueCar at the blueCar anchor
# execute at @a as @e[tag=blueSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["blueCar"]}
execute if score world timer2 matches 1 run execute at @a as @e[tag=blueSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["blueCar"]}
# Move the blueCar armor stand
# execute as @e[tag=blueCar] at @s run tp @s ~ ~ ~-0.4
execute as @e[tag=blueCar] at @s run tp @s ~0.4 ~ ~
# Kill anyone the blueCar hit
#execute as @e[tag=blueCar] at @s positioned ~-1 ~-1 -13 run kill @s[dx=3,dy=5,dz=-5]
# Clone the blocks at the blueCar's position
# execute as @e[tag=blueCar] at @s run clone -28 -13 -5 -24 -10 3 ~-2 ~2 ~-4
execute as @e[tag=blueCar] at @s run clone 11 -63 5 3 -60 9 ~ ~ ~-2

## Orange car
# execute at @a as @e[tag=orangeSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["orangeCar"]}
execute if score world timer2 matches 1 run execute at @a as @e[tag=orangeSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["orangeCar"]}
# Move the orangeCar armor stand
# execute as @e[tag=orangeCar] at @s run tp @s ~ ~ ~0.5
execute as @e[tag=orangeCar] at @s run tp @s ~-0.5 ~ ~
# Kill anyone the orangeCar hit
# execute as @e[tag=orangeCar] at @s positioned ~-1 ~-1 28 run kill @s[dx=3,dy=5,dz=5]
# TODO
# Clone the blocks at the orangeCar's position
# execute as @e[tag=orangeCar] at @s run clone -22 -13 -5 -18 -10 3 ~-2 ~2 ~-4
execute as @e[tag=orangeCar] at @s run clone -11 -63 9 -3 -60 5 ~ ~ ~-2

## Green car
# execute at @a as @e[tag=greenSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["greenCar"]}
execute if score world timer2 matches 1 run execute at @a as @e[tag=greenSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["greenCar"]}
# Move the greenCar armor stand
# execute as @e[tag=greenCar] at @s run tp @s ~ ~ ~-0.75
execute as @e[tag=greenCar] at @s run tp @s ~0.75 ~ ~
# Kill anyone the greenCar hit
# execute as @e[tag=greenCar] at @s positioned ~-1 ~-1 -13 run kill @s[dx=3,dy=5,dz=-5]
# TODO
# Clone the blocks at the greenCar's position
# execute as @e[tag=greenCar] at @s run clone -16 -13 -5 -12 -10 3 ~-2 ~2 ~-4
execute as @e[tag=greenCar] at @s run clone 11 -63 -9 3 -60 -5 ~ ~ ~-2

## Yellow car
# execute at @a as @e[tag=yellowSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["yellowCar"]}
execute if score world timer2 matches 1 run execute at @a as @e[tag=yellowSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["yellowCar"]}
# Move the yellowCar armor stand
# execute as @e[tag=yellowCar] at @s run tp @s ~ ~ ~1
execute as @e[tag=yellowCar] at @s run tp @s ~-1 ~ ~
# Kill anyone the yellowCar hit
# execute as @e[tag=yellowCar] at @s positioned ~-1 ~-1 28 run kill @s[dx=3,dy=5,dz=5]
# TODO
# Clone the blocks at the yellowCar's position
# execute as @e[tag=yellowCar] at @s run clone -10 -13 -5 -6 -10 3 ~-2 ~2 ~-4
execute as @e[tag=yellowCar] at @s run clone -11 -63 -5 -3 -60 -9 ~ ~ ~-2

# clone blue car blocks
#blueCar 11 -63 5 3 -60 9
#orangeCar -11 -63 9 -3 -60 5
#greenCar 11 -63 -9 3 -60 -6
#yellowCar -11 -63 -5 -3 -60 -9
#train 15 -63 13 -15 -60 15
#log 4 -63 -14 -4 -63 -14

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

## Timers
# Reset the 1-second timer if it reaches 20 ticks
execute if score world timer1 matches 20 run scoreboard players set world timer1 0
# Increment timer 1
scoreboard players add world timer1 1
# Reset the 2-second timer if it reaches 40 ticks
execute if score world timer2 matches 40 run scoreboard players set world timer2 0
# Increment timer 2
scoreboard players add world timer2 1
# Reset the 3-second timer if it reaches 60 ticks
execute if score world timer3 matches 60 run scoreboard players set world timer3 0
# Increment timer 3
scoreboard players add world timer3 1
