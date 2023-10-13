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
kill @e[tag=train1Spawner]
kill @e[tag=train2Spawner]
kill @e[tag=train3Spawner]
kill @e[tag=log2R]
kill @e[tag=log3L]
kill @e[tag=log4L]

summon armor_stand -21 1 24 {Invulnerable:1b,Tags:["blueSpawner"]}
summon armor_stand 21 1 30 {Invulnerable:1b,Tags:["orangeSpawner"]}

summon armor_stand -21 1 38 {Invulnerable:1b,Tags:["blueSpawner"]}

summon armor_stand 21 1 73 {Invulnerable:1b,Tags:["orangeSpawner"]}
summon armor_stand -21 1 79 {Invulnerable:1b,Tags:["blueSpawner"]}

summon armor_stand 21 1 87 {Invulnerable:1b,Tags:["orangeSpawner"]}

summon armor_stand -21 1 101 {Invulnerable:1b,Tags:["greenSpawner"]}

summon armor_stand 21 1 112 {Invulnerable:1b,Tags:["train1Spawner"]}

summon armor_stand -21 1 120 {Invulnerable:1b,Tags:["train2Spawner"]}
summon armor_stand 21 1 126 {Invulnerable:1b,Tags:["train3Spawner"]}

summon armor_stand 21 1 163 {Invulnerable:1b,Tags:["yellowSpawner"]}

summon armor_stand -21 1 169 {Invulnerable:1b,Tags:["greenSpawner"]}

summon armor_stand -21 1 53 {Invulnerable:1b,Tags:["log4L"]}

summon armor_stand 21 1 57 {Invulnerable:1b,Tags:["log2R"]}

summon armor_stand -21 1 61 {Invulnerable:1b,Tags:["log3L"]}
