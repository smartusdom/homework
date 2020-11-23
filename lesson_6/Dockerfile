FROM ubuntu:20.04
RUN apt update && apt install default-jdk -y && apt install tomcat9 -y &&\
    apt install maven -y && apt install git -y
WORKDIR /root
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package -f /root/boxfuse-sample-java-war-hello/pom.xml
RUN cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /var/lib/tomcat9/webapps/hello-1.0.war
EXPOSE 8080
CMD [“/usr/share/tomcat9/bin/catalina.sh”, “run”]