# Zomboid Server на Ubuntu
Установка Project Zomboid Dedicated Server на Ubuntu Server LTS 22.04.3

Скрипт `minimal-install.sh` автоматические выполняет установку всех пакетов и настройку портов

### Проверенные системы:
- Ubuntu Server 20.04.1
- Ubuntu Server 22.04.3

### Команды для установки


```sudo apt-get update```

```sudo apt-get upgrade -y```

```sudo add-apt-repository multiverse```

```sudo dpkg --add-architecture i386```

```sudo apt update```

```sudo apt install lib32z1 lib32gcc-s1 libstdc++6:i386 gcc-multilib mc steamcmd software-properties-common -y```

```sudo ufw allow 16261/udp```

```sudo ufw allow 16262/udp```

```sudo ufw allow 8766/udp```

```sudo ufw allow 8767/udp```

```sudo adduser "your_user"```

```su - "your_user"```

```mkdir pzserver```

```cd /pzserver```

```steamcmd```

```force_install_dir /home/*user*/pzserver/```

```login anonymous```

```app_update 380870 validate```

```exit```

```sudo ./start_server.sh```

Во время обновления клиента Steam может возникнуть следующая ошибка:

`Loading Steam API...dlmopen steamservice.so failed: steamservice.so: cannot open shared object file: No such file or directory`

Можно её проигнорировать, в моём случае это не привело к каким-либо проблемам при запуске!
