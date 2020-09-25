#!/bin/bash

#Criando imagem do nginx
docker pull nginx
#Criando volume para persitir dados da pasta html do nginx
docker volume create data-persist-html
#Rodar o container espelhando a pasta html do nginx
docker container run -d --name nginx-persist-html -v data-persist-html:/usr/share/nginx/html -p 8081:80  nginx

 
