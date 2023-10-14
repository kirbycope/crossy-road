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
kill @e[tag=log2RSpawner]
kill @e[tag=log3LSpawner]
kill @e[tag=log4LSpawner]

summon armor_stand -21 1 24 {Invisible:1b,Invulnerable:1b,Tags:["blueSpawner"]}
summon armor_stand 21 1 30 {Invisible:1b,Invulnerable:1b,Tags:["orangeSpawner"]}

summon armor_stand -21 1 38 {Invisible:1b,Invulnerable:1b,Tags:["blueSpawner"]}

summon armor_stand 21 1 73 {Invisible:1b,Invulnerable:1b,Tags:["orangeSpawner"]}
summon armor_stand -21 1 79 {Invisible:1b,Invulnerable:1b,Tags:["blueSpawner"]}

summon armor_stand 21 1 87 {Invisible:1b,Invulnerable:1b,Tags:["orangeSpawner"]}

summon armor_stand -21 1 101 {Invisible:1b,Invulnerable:1b,Tags:["greenSpawner"]}

summon armor_stand 21 1 112 {Invisible:1b,Invulnerable:1b,Tags:["train1Spawner"]}

summon armor_stand -21 1 120 {Invisible:1b,Invulnerable:1b,Tags:["train2Spawner"]}
summon armor_stand 21 1 126 {Invisible:1b,Invulnerable:1b,Tags:["train3Spawner"]}

summon armor_stand 21 1 163 {Invisible:1b,Invulnerable:1b,Tags:["yellowSpawner"]}

summon armor_stand -21 1 169 {Invisible:1b,Invulnerable:1b,Tags:["greenSpawner"]}

summon armor_stand -21 1 53 {Invisible:1b,Invulnerable:1b,Tags:["log4LSpawner"]}

summon armor_stand 21 1 57 {Invisible:1b,Invulnerable:1b,Tags:["log2RSpawner"]}

summon armor_stand -21 1 61 {Invisible:1b,Invulnerable:1b,Tags:["log3LSpawner"]}
