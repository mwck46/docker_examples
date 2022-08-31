# Docker Commands


### docker ps
lists all running docker containers (processes)  
`-a` all
```
docker ps -a
```

### docker images
lists all docker images  
`-a` all
```
docker images -a
```

### docker rm
Remove a docker container  
```
docker rm <container_id>
docker rm -v $(docker ps -aq)
```

### docker rmi
Remove a docker image  
```
docker rmi <image_id>
```
