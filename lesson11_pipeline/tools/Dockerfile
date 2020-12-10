FROM openjdk:8u275-jre-buster

# Update packages list
RUN apt-get update && apt-get install maven -y

# Clear cache
RUN apt-get clean

CMD ["mvn package"]
#CMD tail -f /dev/null