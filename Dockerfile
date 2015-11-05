FROM csanchez/jenkins-swarm-slave

MAINTAINER luizhmc@gmail.com

RUN apt-get update
RUN apt-get install python python-dev python-pip libyaml-dev -yq
RUN pip install ansible

