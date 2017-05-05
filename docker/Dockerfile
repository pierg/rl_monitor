#Pull image
FROM ubuntu:xenial

#Update
RUN apt-get update

#Install git and python
RUN apt-get install -y git python-dev python-pip

#Install Keras 1.1.0
RUN pip install https://github.com/fchollet/keras/tarball/1.1.0

#Install Tensorflow
RUN export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0-cp27-none-linux_x86_64.whl && \
    pip install --upgrade $TF_BINARY_URL
    
    
