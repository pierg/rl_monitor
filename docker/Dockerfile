#Pull image
FROM ubuntu:xenial

#Update
RUN apt-get update

#Install git and python
RUN apt-get install -y git \
    python-dev \
    python-pip && \
    pip install --upgrade pip

#Install Keras 1.1.0
RUN pip install https://github.com/fchollet/keras/tarball/1.1.0

#Install Tensorflow
RUN export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.10.0-cp27-none-linux_x86_64.whl && \
    pip install --upgrade $TF_BINARY_URL
    
#Dependencies for gym-torcs
RUN apt-get install -y xautomation \
    libglib2.0-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    freeglut3-dev \
    libplib-dev \
    libopenal-dev \
    libalut-dev \
    libxi-dev \
    libxmu-dev \
    libxrender-dev \
    libxrandr-dev \
    libpng12-dev && \
    pip install gym && \
    pip install numpy && \
    pip install h5py

RUN git clone --branch gym_torcs --single-branch https://github.com/pierg/rl_monitor.git  && \
    cd rl_monitor/vtorcs-RL-color && \
    chmod 777 configure && \
    ./configure
  
RUN cd rl_monitor/vtorcs-RL-color && \
    make clean

RUN cd rl_monitor/vtorcs-RL-color && \
    make && \
    make install && \
    make datainstall

RUN apt-get install -y default-jdk \
    aspectj

RUN cd rl_monitor/monitor && \
    make compile
    

WORKDIR rl_monitor/
