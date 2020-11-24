FROM maven:3.6-adoptopenjdk-11
RUN apt update && apt install git -y
WORKDIR /usr/src/mymaven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package -f /usr/src/mymaven/boxfuse-sample-java-war-hello/pom.xml
RUN cp /usr/src/mymaven/boxfuse-sample-java-war-hello/target/hello-1.0.war /srv/hello-1.0.war