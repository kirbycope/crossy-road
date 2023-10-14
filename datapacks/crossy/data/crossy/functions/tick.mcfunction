# Initialize new players
execute as @a[tag=!init] run function crossy:init-player

# Teleport chicken
tp @e[type=minecraft:chicken] 7 3.1 47

# Remove chicken eggs
kill @e[type=item]

# Set max health to 0.1
execute as @a run attribute @s minecraft:generic.max_health base set 0.1

# Kill player(s) in water
execute as @a at @s run execute if block ~ ~ ~ minecraft:water run kill @s

# Kill players hit by vehicle
execute as @a at @s run execute unless block ~ ~1 ~ minecraft:air run kill @s

# Spawn blueCar
execute if score world timer2 matches 1 run execute at @a as @e[tag=blueSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["blueCar"]}
# Move the blueCar
execute as @e[tag=blueCar] at @s run tp @s ~0.4 ~ ~
# Clone the blocks at the blueCar's position
execute as @e[tag=blueCar] at @s run clone 11 -63 5 3 -60 9 ~ ~2 ~-2

# Spawn new orangeCar
execute if score world timer3 matches 1 run execute at @a as @e[tag=orangeSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["orangeCar"]}
# Move the orangeCar
execute as @e[tag=orangeCar] at @s run tp @s ~-0.5 ~ ~
# Clone the blocks at the orangeCar's position
execute as @e[tag=orangeCar] at @s run clone -11 -63 9 -3 -60 5 ~ ~2 ~-2

# Spawn new greenCar
execute if score world timer2 matches 1 run execute at @a as @e[tag=greenSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["greenCar"]}
# Move the greenCar
execute as @e[tag=greenCar] at @s run tp @s ~0.75 ~ ~
# Clone the blocks at the greenCar's position
execute as @e[tag=greenCar] at @s run clone 11 -63 -9 3 -60 -5 ~ ~2 ~-2

# Spawn new yellowCar
execute if score world timer2 matches 1 run execute at @a as @e[tag=yellowSpawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["yellowCar"]}
# Move the yellowCar
execute as @e[tag=yellowCar] at @s run tp @s ~-1 ~ ~
# Clone the blocks at the yellowCar's position
execute as @e[tag=yellowCar] at @s run clone -11 -63 -5 -3 -60 -9 ~ ~2 ~-2

# Spawn log2R
execute if score world timer3 matches 1 run execute as @e[tag=log2RSpawner] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["log2R"]}
execute as @e[tag=log2R] at @s run tp @s ~-0.15 ~ ~
execute as @e[tag=log2R] at @s run clone 3 -63 -14 1 -63 -14 ~ ~1 ~

# Spawn new log3L
execute if score world timer2 matches 1 run execute as @e[tag=log3LSpawner] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["log3L"]}
execute as @e[tag=log3L] at @s run tp @s ~0.3 ~ ~
execute as @e[tag=log3L] at @s run clone 0 -63 -14 -3 -63 -14 ~ ~1 ~

# Spawn log4L
execute if score world timer4 matches 1 run execute as @e[tag=log4LSpawner] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["log4L"]}
execute as @e[tag=log4L] at @s run tp @s ~0.1 ~ ~
execute as @e[tag=log4L] at @s run clone 1 -63 -14 -3 -63 -14 ~ ~1 ~

# Spawn new  train1
execute if score world timer2 matches 1 run execute at @a as @e[tag=train1Spawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["train1"]}
execute as @e[tag=train1] at @s run tp @s ~-4 ~ ~
execute as @e[tag=train1] at @s run clone 18 -63 13 -16 -60 15 ~ ~2 ~-1

# Spawn new train2
execute if score world timer2 matches 1 run execute at @a as @e[tag=train2Spawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["train2"]}
execute as @e[tag=train2] at @s run tp @s ~3 ~ ~
execute as @e[tag=train2] at @s run clone 16 -63 13 -18 -60 15 ~ ~2 ~-1

# Spawn new train3
execute if score world timer2 matches 1 run execute at @a as @e[tag=train3Spawner,distance=..40] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["train3"]}
execute as @e[tag=train3] at @s run tp @s ~-5 ~ ~
execute as @e[tag=train3] at @s run clone 20 -63 13 -16 -60 15 ~ ~2 ~-1

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

## Kill cars out of range
# Kill out of range cars and logs, Right-side Part 1
execute as @e[x=-33,y=1,z=21,dx=0,dy=0,dz=89] run kill @s
# Kill out of range trains, Right-side
execute as @e[x=-54,y=1,z=110,dx=4,dy=0,dz=32] run kill @s

# Kill out of range cars and logs, Left-side Part 1
execute as @e[x=27,y=1,z=21,dx=0,dy=0,dz=189] run kill @s

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
# Reset the 4-second timer if it reaches 80 ticks
execute if score world timer4 matches 80 run scoreboard players set world timer4 0
# Increment timer 4
scoreboard players add world timer4 1
