FROM ravishtiwari/jenkins-slave-agent
MAINTAINER Ravish Tiwari <ravishktiwari@hotmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN echo "-- Install Node.js 8 --"
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install nodejs -yq \
  zip unzip \
  awscli \ 
  pkg-config 
RUN usermod -aG docker ${USER}

RUN curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
# confirm installation

CMD ["node"]
