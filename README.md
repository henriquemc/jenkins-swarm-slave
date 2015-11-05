# jenkins-swarm-slave-docker
Jenkins slave wiith ansible installed

[`henriquemc/jenkins-swarm-slave`](https://registry.hub.docker.com/u/henriquemc/jenkins-swarm-slave/)

A [Jenkins swarm](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin) slave.


## Running

To run a Docker container passing [any parameters](https://wiki.jenkins-ci.org/display/JENKINS/Swarm+Plugin#SwarmPlugin-AvailableOptions) to the slave

    docker run henriquemc/jenkins-swarm-slave -master http://jenkins:8080 -username jenkins -password jenkins -executors 1

Linking to the Jenkins master container there is no need to use `--master`

    docker run -d --name jenkins -p 8080:8080 henriquemc/jenkins-swarm
    docker run -d --link jenkins:jenkins henriquemc/jenkins-swarm-slave -username jenkins -password jenkins -executors 1


# Building

    docker build -t henriquemc/jenkins-swarm-slave .
