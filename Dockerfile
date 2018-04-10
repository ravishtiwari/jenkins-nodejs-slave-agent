FROM ravishtiwari/jenkins-slave-agent
MAINTAINER Ravish Tiwari <ravishktiwari@hotmail.com>
ENV DEBIAN_FRONTEND noninteractive
RUN echo "-- Install Node.js 8 --"
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN apt-get install zip unzip -y
RUN apt-get install awscli -y
# confirm installation
RUN node -v
#CMD ["node -v"]
