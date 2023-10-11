gamemode adventure
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule sendCommandFeedback false

# Bok bok
kill @e[type=minecraft:chicken]
summon minecraft:chicken 7 3 47

# Car anchors
kill @e[tag="blueSpawner"]
kill @e[tag="greenSpawner"]
kill @e[tag="orangeSpawner"]

summon armor_stand -21 3 24 {Tags:["blueSpawner"]}
summon armor_stand 21 3 30 {Tags:["orangeSpawner"]}

summon armor_stand -21 3 38 {Tags:["blueSpawner"]}

summon armor_stand 21 3 73 {Tags:["orangeSpawner"]}
summon armor_stand -21 3 80 {Tags:["blueSpawner"]}

summon armor_stand 21 3 87 {Tags:["orangeSpawner"]}

summon armor_stand -21 3 101 {Tags:["greenSpawner"]}

summon armor_stand 21 3 163 {Tags:["yellowSpawner"]}

summon armor_stand -21 3 169 {Tags:["greenSpawner"]}
