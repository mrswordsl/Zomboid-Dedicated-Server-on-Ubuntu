# Zomboid-Server-on-Ubuntu
Установка Project Zomboid Dedicated Server на Ubuntu Server LTS 22.04.3

### Команды для установки

```
user@server:~$ sudo apt-get update
user@server:~$ sudo apt-get upgrade -y
user@server:~$ sudo add-apt-repository multiverse
user@server:~$ sudo dpkg --add-architecture i386
user@server:~$ sudo apt update
user@server:~$ sudo apt install lib32z1 lib32gcc-s1 libstdc++6:i386 gcc-multilib mc steamcmd software-properties-common -y
user@server:~$ sudo adduser "your_user"
user@server:~$ su - "your_user"
"your_user"@server:~$ mkdir pzserver
"your_user"@server:~$ cd /pzserver
Steam>force_install_dir /home/*user*/pzserver/

Steam>login *steam_user*
Steam>*password*
Steam>*Steam Guard Code*
Steam>app_update 380870 validate
"your_user"@server:~$ ./start_server.sh
```

или

```
///
Steam>login anonymous
Steam>app_update 380870 validate
"your_user"@server:~$ ./start_server.sh
```

Во время обновления клиента Steam может возникнуть следующая ошибка:

`Loading Steam API...dlmopen steamservice.so failed: steamservice.so: cannot open shared object file: No such file or directory`

Можно её проигнорировать, в моём случае это не привело к каким-либо проблемам при запуске!
