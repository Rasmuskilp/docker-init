FROM ubuntu:18.04
WORKDIR /home/ubuntu
ADD app /home/ubuntu/app
RUN apt-get update -y
RUN apt-get install python -y
RUN apt-get install nginx -y
RUN apt-get install nodejs -y
RUN apt-get install git -y
WORKDIR /home/ubuntu/app
RUN apt-get install npm -y
EXPOSE 3000
CMD ["npm","start"]
