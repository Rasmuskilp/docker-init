#this folder is for a docker-demo
## Dockerfile contains the necessary configurations
## do docker image build docker-init
## to containarise : docker run "image"
## docker run -dit ubuntu
## to keep container running
## docker images - shows current images
##docker ps -a : shows containers
#docker build
#docker run
#docker ps
#docker inspect container/network
#docker run -p for port bind
#This project is to deploy a python app and make it connect to a mongod database to read posts.
## There are three files of interest:Two dockerfiles for app and db and docker-compose file.
### dockerfile acts as a provisioning file
### docker-comppose is a configuration file for networking and deploying clusters.
### The dockerfiles contain basic coding to create a working python environment for the app and mongod.
## The python app is also configured to communicate-read posts from the mongod through setting the DB_HOST env inside app and having a shared network through docker compose.

# This part is for kubernetes

[18:17] Rasmus Kilp
    $ minikube start --vm-driver=hyperv --kubernetes-version 1.14.8
​[18:17] Rasmus Kilp
    to run minikube
​[18:17] Rasmus Kilp
    (my kubernetes version for docker was 1.14.8)
​[18:17] Rasmus Kilp
    then you can to minikube dashboard
​[18:18] Rasmus Kilp
    $ kubectl run rasmus-upn --image=docker
​[18:18] Rasmus Kilp
    to run the image
​[18:18] Rasmus Kilp
    (my image was named rasmus-upn)
​[18:19] Rasmus Kilp
    also, to note, as containers automatically exit when bash script is run, kubernetes will say the status of the thing is crash or what not
​[18:19] Rasmus Kilp
    if you do : $ kubectl get pods
​[18:19] Rasmus Kilp
    $ kubectl expose deployment rasmus-upn
    [18:19] Rasmus Kilp
        and kubectl get svc
    ​[18:19] Rasmus Kilp
        to show ip (though it is local anyway)
    ​[18:20] Rasmus Kilp
        $ kubectl expose deployment rasmus-upn --port=8080
