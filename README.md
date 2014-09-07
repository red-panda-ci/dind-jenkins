dind-jenkins
===========

the child image would be run:

```
docker run -d --name dind-jenkins-child --privileged -p 8080:8080 -v /var/log/.jenkins:/root/.jenkins:rw hoshinotsuyoshi/dind-jenkins
```

