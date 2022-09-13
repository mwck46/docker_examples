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

### docker tag
To tag an image with specific version name / number 
```
docker tag source_img[:tag] target_img[:tag]
```

### docker rm
Remove a docker container  
```
docker rm <container_id>
```
Remove all docker containers   
`-v` also remove volumes  
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
`-f`,`--format` format output with Go template  
Check the mount point of a container  
```
docker inspect -f {{.Mounts}} <container_id>
```
Check the IP address of the container
```
docker inspect -f '{{ .NetworkingSettings.IPAddress }}' <container_name>
```

### docker build
Build a docker image.  
To show more debug info, set environment variable `export DOCKER_BUILDKIT=1`. 
See [doc](https://docs.docker.com/develop/develop-images/build_enhancements/)  
`-t <image_name>` specify the tag of the image. If it is omited, the latest tag will be used  
```
docker build -t mydocker1 .
```
`--build-arg <key>=<value>`, pass build time argument to dockerfile, where `<key>` is defined by `ARG` in dockerfile.
```
docker build --build-arg HOST_UID=$(id -u) -t img_name .
```


### docker run

`--name <container_name>` a name given to the container for identification  

`--link <container_name>:<image_name>` docker automatically expose ports, so this container can reach the linked container  

`-p <host_port>:<image_port>` port forwarding, more than one `-p` can be set  
`-P` forward the exposed port specified in Dockerfile, use `docker ps` to check the port mapping by  

`-v <host_dir>:<container_dir>` mount a volume from docker host inside a container  
`-v <docker_volume_name>:<container_dir>`  
`-v <container_dir>` if host path is omitted, a data container will be created.  

`-e "<env_var>=<val>"` set environment variable  

`-d <image_name>` run in daemon mode. It is usually the last option.  
```
docker run -P -d <image_name>
```

### docker stop
Stop a docker container 
```
docker stop <container_id>
```
Stop all docker containers  
```
docker stop $(docker ps -aq)
```
