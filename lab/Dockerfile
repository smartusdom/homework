FROM ubuntu:14.04
RUN apt update 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
ADD requirements.txt /tmp/
ADD app.py /opt/webapp/
EXPOSE 5000
CMD ["/opt/webapp/app.py", "run"]