# checkmyip-docker
Small Docker Alpine Container to remotely check your IP Address

Based on https://github.com/packetsar/checkmyip, this container will sit and listen for incoming connections. Then it will reply with your IP addesss.
From the github page of "checkmyip":

*Everybody has used a service like WhatIsMyIP.com before. If you are an IT engineer or even an amateur technology enthusiast, then you have probably had a reason to check to see your public IP address. This service works great when a browser is available, but at times it is not. We often find ourselves logged into a remote Linux machine or a network switch/router which has a command line and terminal clients (Telnet and SSH), but no browser. The CheckMyIP app and the TelnetMyIP.com and SSHMyIP.com public services were created with this in mind.*

The container will expose ports 22, 23 and 80. So usage could be:

`docker run --rm --name checkmyip -d -p 80:80 -p 22:22 -p 23:23 dragas/checkmyip`

If you don't want to expose privileged ports, you can change to something like this:

`docker run --rm --name checkmyip -d -p 8000:80 -p 2222:22 -p 2223:23 dragas/checkmyip`

Have fun!
