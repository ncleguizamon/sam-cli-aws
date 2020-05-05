FROM ubuntu:18.04
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update && \
  apt-get install -y software-properties-common 

RUN apt-get install -y build-essential 
RUN apt-get install -y git
RUN apt-get install python3-minimal -y
RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv
RUN apt-get install -y git
RUN apt-get install curl -y &&  apt-get install zip -y 
RUN apt-get install unzip

# -- Install Pipenv:
RUN apt-get update && apt install python3.7-dev libffi-dev -y
RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python3.7

RUN apt-get update && apt install python3.8-dev libffi-dev -y


RUN pip3 install aws-sam-cli