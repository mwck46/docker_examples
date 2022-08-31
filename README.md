# Docker Commands


### docker ps
lists all running docker containers (processes)  
`-a` list all running and stopped containers
`-q` quiet, only display containers' id
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

### docker inspect
Get information about a docker container
`-f` format output
Check the mount point of a container
```
docker inspect -f {{.Mounts}} <container_id>
```



### docker build
Build a docker image
`-t <image_name>` specify the tag of the image. If it is omited, the latest tag will be used  
```
docker build -t mydocker1 .
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
