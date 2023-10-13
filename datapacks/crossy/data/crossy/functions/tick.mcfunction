# Initialize new players
execute as @a[tag=!init] run function crossy:init-player

# Teleport chicken
tp @e[type=minecraft:chicken] 7 3.1 47

# Remove chicken eggs
kill @e[type=item]

# Kill player(s) in water
execute as @a[tag=init] run execute if block ~ ~ ~ minecraft:water run kill @s

## Blue car
# Spawn blueCar
execute if score world timer2 matches 1 run execute at @a as @e[tag=blueSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["blueCar"]}
# Move the blueCar
execute as @e[tag=blueCar] at @s run tp @s ~0.4 ~ ~
# Kill anyone the blueCar hit
#execute as @e[tag=blueCar] at @s positioned ~-1 ~-1 -13 run kill @s[dx=3,dy=5,dz=-5]
# Clone the blocks at the blueCar's position
# execute as @e[tag=blueCar] at @s run clone -28 -13 -5 -24 -10 3 ~-2 ~2 ~-4
execute as @e[tag=blueCar] at @s run clone 11 -63 5 3 -60 9 ~ ~2 ~-2

## Orange car
# Spawn new orangeCar
execute if score world timer2 matches 1 run execute at @a as @e[tag=orangeSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["orangeCar"]}
# Move the orangeCar
execute as @e[tag=orangeCar] at @s run tp @s ~-0.5 ~ ~
# Kill anyone the orangeCar hit
# execute as @e[tag=orangeCar] at @s positioned ~-1 ~-1 28 run kill @s[dx=3,dy=5,dz=5]
# Clone the blocks at the orangeCar's position
execute as @e[tag=orangeCar] at @s run clone -11 -63 9 -3 -60 5 ~ ~2 ~-2

## Green car
# Spawn new greenCar
execute if score world timer2 matches 1 run execute at @a as @e[tag=greenSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["greenCar"]}
# Move the greenCar
execute as @e[tag=greenCar] at @s run tp @s ~0.75 ~ ~
# Kill anyone the greenCar hit
# execute as @e[tag=greenCar] at @s positioned ~-1 ~-1 -13 run kill @s[dx=3,dy=5,dz=-5]
# Clone the blocks at the greenCar's position
execute as @e[tag=greenCar] at @s run clone 11 -63 -9 3 -60 -5 ~ ~2 ~-2

## Yellow car
# Spawn new yellowCar
execute if score world timer2 matches 1 run execute at @a as @e[tag=yellowSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["yellowCar"]}
# Move the yellowCar
execute as @e[tag=yellowCar] at @s run tp @s ~-1 ~ ~
# Kill anyone the yellowCar hit
# execute as @e[tag=yellowCar] at @s positioned ~-1 ~-1 28 run kill @s[dx=3,dy=5,dz=5]
# Clone the blocks at the yellowCar's position
execute as @e[tag=yellowCar] at @s run clone -11 -63 -5 -3 -60 -9 ~ ~2 ~-2

## Train 1
# Spawn new  train1
execute if score world timer2 matches 1 run execute at @a as @e[tag=train1Spawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["train1"]}
execute as @e[tag=train1] at @s run tp @s ~-4 ~ ~
# execute as @e[tag=train1] at @s positioned ~-1 ~-1 60 run kill @s[dx=3,dy=5,dz=5]
execute as @e[tag=train1] at @s run clone 18 -63 13 -16 -60 15 ~ ~2 ~-1

## Train 2
# Spawn new train2
execute if score world timer2 matches 1 run execute at @a as @e[tag=train2Spawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["train2"]}
execute as @e[tag=train2] at @s run tp @s ~3 ~ ~
# execute as @e[tag=train2] at @s positioned ~-1 ~-1 -45 run kill @s[dx=3,dy=5,dz=-5]
execute as @e[tag=train2] at @s run clone 16 -63 13 -18 -60 15 ~ ~2 ~-1

## Train 3
# Spawn new train3
execute if score world timer2 matches 1 run execute at @a as @e[tag=train3Spawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["train3"]}
execute as @e[tag=train3] at @s run tp @s ~-5 ~ ~
# execute as @e[tag=train3] at @s positioned ~-1 ~-1 60 run kill @s[dx=3,dy=5,dz=5]
execute as @e[tag=train3] at @s run clone 20 -63 13 -16 -60 15 ~ ~2 ~-1

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
