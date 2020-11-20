FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install tomcat9 -y
RUN apt install maven -y
RUN apt install git -y
RUN cd /tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN mvn package
RUN cd /target
RUN cp hello*.war /var/lib/tomcat9/webapps/
EXPOSE 8080
CMD [“catalina.sh”, “run”]