# hetzner-minecraft-provisioner
A tool for provisioning servers on hetzner. Purpose-built for creating 
and destroying minecraft servers. The server config and the game data is
saved in a volume, which will be attached on server creation.\
The purpose of this tool is to lower the ongoing cost of running
a minecraft server, since only the IPv4 address and volume has to be paid
for on a monthly basis. Servers are spun up as needed and will be deleted
to reduce cost.\
To avoid leaking the IP address of the server, it is read from a file in the
user's home directory: ~/hetzner-ipv4.txt
~~~
if ssh is annoying follow this advice: https://askubuntu.com/a/87452
~~~