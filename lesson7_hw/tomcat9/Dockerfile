FROM maven:3.6-adoptopenjdk-11
RUN apt update && apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package -f /root/boxfuse-sample-java-war-hello/pom.xml
RUN cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /srv/hello-1.0.war