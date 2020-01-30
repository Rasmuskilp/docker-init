FROM ubuntu:18.04
WORKDIR /home/ubuntu
RUN apt-get update -y
RUN apt-get install python -y
RUN apt-get install nginx -y
RUN apt-get install nodejs -y
CMD tail -f /dev/null
