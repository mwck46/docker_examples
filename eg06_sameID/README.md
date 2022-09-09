Build a ubuntu docker image with user id and group id same as the host. 
- Can prevent access violation problem 
- **Not recommand for production!!! Because it creates significant security issue!!!**


1. Build docker image
```
docker build \
--build-arg HOST_UID=$(id -u) \
--build-arg HOST_GID=$(id -g) \
-t eg09 .
```

2. Run docker container
```
docker run --name sameid -p 10022:22 -d sameid
docker run --name eg09 \
-v $(pwd)/mnt:/mnt \
-p 10022:22 \
-d eg09
```

3. SSH to the server
ssh devp@10.x.x.x -p 10022
