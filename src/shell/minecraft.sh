# execute as root!
#!/bin/bash

mkdir /mnt/volume-nbg1-1
mount -o discard,defaults /dev/disk/by-id/scsi-0HC_Volume_28593151 /mnt/volume-nbg1-1
echo "mounted volume on /mnt/volume-nbg1-1"

apt-get update
apt-get upgrade -y
apt-get autoremove -y
apt-get install openjdk-17-jre-headless -y

addgroup minecraft
adduser --gid 1000 --disabled-password --gecos "" minecraft

cd /mnt/volume-nbg1-1
[ ! -e server.jar ] && wget https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar
echo -e '#!/bin/bash\njava -jar server.jar --nogui' > start.sh
chmod u+x start.sh
./start.sh
sed -i s/eula=false/eula=true/g eula.txt
./start.sh
