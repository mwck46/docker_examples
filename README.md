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
```
Remove all docker containers  
```
docker rm -v $(docker ps -aq)
```


### docker rmi
Remove a docker image  
```
docker rmi <image_id>
```

### docker run


### docker stop
Stop a docker container 
```
docker stop <container_id>
```
Stop all docker containers  
```
docker stop $(docker ps -q)
```
