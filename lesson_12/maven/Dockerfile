FROM ubuntu:20.04
RUN apt update && apt install maven -y && apt install git -y
WORKDIR /root
RUN git clone https://github.com/smartusdom/App42PaaS
RUN mvn package -f /root/App42PaaS/pom.xml
ENTRYPOINT cp /root/App42PaaS/target/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war /srv/App42PaaS-Java-MySQL-Sample-0.0.1-SNAPSHOT.war
#CMD tail -f /dev/null