FROM openjdk:8u275-jre-buster

# Update packages list
RUN apt-get update && apt-get install maven -y

# Install docker latest
RUN sudo apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get install docker-ce docker-ce-cli containerd.io

# Clear cache
RUN apt-get clean

CMD tail -f /dev/null