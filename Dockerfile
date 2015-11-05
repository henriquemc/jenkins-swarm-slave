FROM csanchez/jenkins-swarm-slave

MAINTAINER luizhmc@gmail.com

USER root
RUN apt-get update
RUN apt-get install -yq \
\ python
\ python-dev
\ python-pip 
\ libyaml-dev 

RUN pip install ansible

USER jenkins-slave
