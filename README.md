docker-hudson
=============

hudson ( ci ) for docker

# Usage

* git clone this repo
* docker build -t yourname/hudson .

# Setting

* Port : 8080
* webapps dir : /www/webapps 
* env JAVA_OPTS=-server -Xms256m -Xmx1000m -XX:MaxPermSize=512M
* env HUDSON_HOME=/data/hudson
* already include git & maven


# Run

`docker run -d -p=8080:8080 -v /etc/localtime:/etc/localtime  -v /somedir/hudson:/data/hudson --name=hudson your/hudson`
