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

summon armor_stand -21 1 24 {Invulnerable:1b,Tags:["blueSpawner"]}
summon armor_stand 21 1 30 {Invulnerable:1b,Tags:["orangeSpawner"]}

summon armor_stand -21 1 38 {Invulnerable:1b,Tags:["blueSpawner"]}

summon armor_stand 21 1 73 {Invulnerable:1b,Tags:["orangeSpawner"]}
summon armor_stand -21 1 79 {Invulnerable:1b,Tags:["blueSpawner"]}

summon armor_stand 21 1 87 {Invulnerable:1b,Tags:["orangeSpawner"]}

summon armor_stand -21 1 101 {Invulnerable:1b,Tags:["greenSpawner"]}

summon armor_stand 21 1 112 {Invulnerable:1b,Tags:["train1"]}

summon armor_stand -21 1 120 {Invulnerable:1b,Tags:["train2"]}
summon armor_stand 21 1 126 {Invulnerable:1b,Tags:["train3"]}

summon armor_stand 21 1 163 {Invulnerable:1b,Tags:["yellowSpawner"]}

summon armor_stand -21 1 169 {Invulnerable:1b,Tags:["greenSpawner"]}
