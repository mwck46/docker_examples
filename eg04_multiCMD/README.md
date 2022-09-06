Build a ubuntu docker image that can be accessed by ssh


1. Build docker image
```
docker build -t multiCMD:0.1 .
```

2. Run docker container
```
docker run --name multiCMD01 -p 10022:22 -d multiCMD:0.1
```

3. SSH to the server
ssh devp@10.x.x.x -p 10022
