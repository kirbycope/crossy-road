gamemode adventure
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule sendCommandFeedback false

# Bok bok
kill @e[type=minecraft:chicken]
summon minecraft:chicken 7 3 47

# Timers
scoreboard objectives add timer1 dummy
scoreboard players add world timer1 0
scoreboard objectives add timer2 dummy
scoreboard players add world timer2 0
scoreboard objectives add timer3 dummy
scoreboard players add world timer3 0

# Car anchors
kill @e[tag=blueSpawner]
kill @e[tag=greenSpawner]
kill @e[tag=orangeSpawner]
kill @e[tag=yellowSpawner]

summon armor_stand -21 3 24 {CustomNameVisible:1b,TagsTags:["blueSpawner"]}
summon armor_stand 21 3 30 {CustomNameVisible:1b,TagsTags:["orangeSpawner"]}

summon armor_stand -21 3 38 {CustomNameVisible:1b,TagsTags:["blueSpawner"]}

summon armor_stand 21 3 73 {CustomNameVisible:1b,TagsTags:["orangeSpawner"]}
summon armor_stand -21 3 79 {CustomNameVisible:1b,TagsTags:["blueSpawner"]}

summon armor_stand 21 3 87 {CustomNameVisible:1b,TagsTags:["orangeSpawner"]}

summon armor_stand -21 3 101 {CustomNameVisible:1b,Tags:["greenSpawner"]}

summon armor_stand 21 3 163 {Tags:["yellowSpawner"]}

summon armor_stand -21 3 169 {CustomNameVisible:1b,Tags:["greenSpawner"]}
