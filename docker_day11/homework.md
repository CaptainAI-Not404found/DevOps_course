docker --version

Docker version 28.5.1, build e180ab8

docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working c
orrectly.                                                        
To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Doc
ker Hub.                                                             (arm64v8)
 3. The Docker daemon created a new container from that image whi
ch runs the                                                          executable that produces the output you are currently reading
.                                                                 4. The Docker daemon streamed that output to the Docker client, 
which sent it                                                        to your terminal.

To try something more ambitious, you can run an Ubuntu container 
with:                                                             $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

❯ docker run -it ubuntu bash
root@09de62c7a8e7:/# ls
bin   dev  home  media  opt   root  sbin  sys  usr
boot  etc  lib   mnt    proc  run   srv   tmp  var
root@09de62c7a8e7:/# cd opt
root@09de62c7a8e7:/opt# ls
root@09de62c7a8e7:/opt# ls -la
total 8
drwxr-xr-x 2 root root 4096 Oct 13 14:06 .
drwxr-xr-x 1 root root 4096 Nov 20 13:53 ..
root@09de62c7a8e7:/opt# ifconfig
bash: ifconfig: command not found
root@09de62c7a8e7:/opt# sudo ifconfig
bash: sudo: command not found
root@09de62c7a8e7:/opt# cd ..
root@09de62c7a8e7:/# cd home
root@09de62c7a8e7:/home# ls
ubuntu
root@09de62c7a8e7:/home# cd ubuntu
root@09de62c7a8e7:/home/ubuntu# ls
root@09de62c7a8e7:/home/ubuntu# ls -la
total 20
drwxr-x--- 2 ubuntu ubuntu 4096 Oct 13 14:12 .
drwxr-xr-x 3 root   root   4096 Oct 13 14:12 ..
-rw-r--r-- 1 ubuntu ubuntu  220 Mar 31  2024 .bash_logout
-rw-r--r-- 1 ubuntu ubuntu 3771 Mar 31  2024 .bashrc
-rw-r--r-- 1 ubuntu ubuntu  807 Mar 31  2024 .profile
root@09de62c7a8e7:/home/ubuntu# exit
exit

FROM alpine:latest
CMD ["echo", "Hello from Ryder's first container!"]

❯ docker run ryder-hello

Hello from Ryder's first container!
