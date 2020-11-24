FROM ubuntu:20.04
RUN apt update && apt install maven -y && apt install git -y
WORKDIR /root
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn package -f /root/boxfuse-sample-java-war-hello/pom.xml
CMD ["/bin/bash"]