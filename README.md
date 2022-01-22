## Push image to nexus repository

Example of pushing image to nexus repository


#### Create repository docker hosted

    Active HTTP: put port 10001
    Active enable docker v1

### Create daemon.json

touch /etc/docker/daemon.json

#### Change daemon.json  to 

```
{
    "insecure-registries" : ["127.0.0.1:10001"]
}
```

#### Restart docker

```
$ sudo systemctl restart docker
```

#### Login in nexus repository

```
$ docker login http://127.0.0.1:10001
```

#### Logout in nexys repository

```
$ docker logout
```

#### Generate docker image

```
$ grailsw war
$ docker build -t 127.0.0.1:10001/apptomcat8:0.1 .
#or    
docker build -t 127.0.0.1:10001/apptomcat8:latest .
```


#### Push docker image to nexus repository

```
$ docker push 127.0.0.1:10001/apptomcat8:0.1
```

