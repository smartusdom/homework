FROM ubuntu20.04:latest
RUN apt update && apt install maven -y && apt install git -y
WORKDIR /root
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package -f /root/boxfuse-sample-java-war-hello/pom.xml
ENTRYPOINT cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /srv/hello-1.0.war