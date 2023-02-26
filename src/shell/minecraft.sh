# execute as root!
#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get autoremove -y
apt-get install openjdk-17-jre-headless

addgroup minecraft && adduser minecraft --group minecraft --disabled-login

su minecraft
cd ~
mkdir -p minecraft
echo -e '#!/bin/bash\njava -jar server-1-19-3.jar' --nogui > start.sh
chmod u+x start.sh
./start.sh
sed -i s/eula=false/eula=true/g eula.txt
echo -e '#!/bin/bash\njava -jar server-1-19-3.jar' --nogui > start.sh
