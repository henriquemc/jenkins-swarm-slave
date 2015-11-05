FROM csanchez/jenkins-swarm-slave

MAINTAINER luizhmc@gmail.com

USER root
RUN apt-get update
RUN apt-get install python-setuptools -yq
RUN easy_install pip
RUN pip install ansible

USER jenkins-slave
