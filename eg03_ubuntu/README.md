Build a ubuntu docker image that can be accessed by ssh


1. Build docker image
```
docker build -t ubuntu20_ssh .
```

2. Run docker container
```
docker run --name dev_env1 -p 10022:22 -d ubuntu20_ssh
```

3. ssh devp@10.x.x.x -p 10022
