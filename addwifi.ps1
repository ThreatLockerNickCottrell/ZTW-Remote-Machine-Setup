# Downloading wifi profile to temp
Invoke-WebRequest -OutFile "${env:TEMP}\Zero_Trust_world.xml" https://raw.githubusercontent.com/ThreatLockerNickCottrell/ZTW-Remote-Machine-Setup/main/Wi-Fi-Zero_Trust_World_2024.xml

# Deleting and adding profile
netsh WLAN delete profile "Zero Trust World 2024"
netsh WLAN add profile filename="${env:TEMP}\Zero_Trust_World.xml"
netsh WLAN connect name="Zero Trust World 2024"

# Deleting profile in temp
Remove-Item "${env:TEMP}\Zero_Trust_world.xml"
