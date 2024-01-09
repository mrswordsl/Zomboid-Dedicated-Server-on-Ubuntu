# ℹ️ Zomboid Server на Ubuntu ℹ️
Установка Project Zomboid Dedicated Server на Ubuntu Server 22.04.3

Для успешной установки, на диске должно быть не менее 30 Гб свободного места!

🟠 Скрипт 🟠
`minimal-install.sh` автоматически выполняет установку всех пакетов и настройку портов
Чтобы запустить скрипт выполните следующие команды:

`sudo chmod +x minimal-install.sh`

`sudo ./minimal-install.sh`

Если вы запускаете скрипт, то после его завершения следует продолжать с команды `sudo adduser "your_user"`

### протестированные системы:
- Ubuntu Server 20.04.1 ✔️
- Ubuntu Server 22.04.3 LTS ✔️

### 🔻 Команды для установки 🔻


`sudo apt-get update`

`sudo apt-get upgrade -y`

`sudo add-apt-repository multiverse`

`sudo dpkg --add-architecture i386`

`sudo apt update`

`sudo apt install lib32z1 lib32gcc-s1 libstdc++6:i386 gcc-multilib mc steamcmd software-properties-common -y`

`sudo ufw allow 16261/udp`

`sudo ufw allow 16262/udp`

`sudo ufw allow 8766/udp`

`sudo ufw allow 8767/udp`

⚠️ После выполнения скрипта продолжать отсюда <br> `sudo adduser "your_user"`

`su - "your_user"`

`mkdir pzserver`

`cd pzserver`

`steamcmd`

`force_install_dir /home/*user*/pzserver/`

`login anonymous`

`app_update 380870 validate`

`exit`

`./start_server.sh`

Во время обновления клиента Steam может возникнуть следующая ошибка:

`Loading Steam API...dlmopen steamservice.so failed: steamservice.so: cannot open shared object file: No such file or directory`

Можно её проигнорировать, в моём случае это не привело к каким-либо проблемам при запуске!
