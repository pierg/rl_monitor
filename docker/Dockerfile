#Pull image
FROM ubuntu:xenial

#Update
RUN apt-get update

#Install git and python
RUN apt-get install -y git python-dev python-pip

#Install Keras 1.1.0
RUN pip install https://github.com/fchollet/keras/tarball/1.1.0
