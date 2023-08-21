FROM ghcr.io/ocean-perception/qgis:latest

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y --no-install-recommends  \
    python  \
    python3  \
    python3-serial  \
    python3-pip  \
    python3-matplotlib  \
    python3-lxml  \
    python3-pyqt5  \
    libboost-thread-dev  \
    libboost-date-time-dev  \
    libboost-filesystem-dev  \
    libeigen3-dev  \
    libtinyxml-dev \
    make cmake build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install pysftp geopy dataclasses Flask Flask-SocketIO gevent gevent-websocket importlib_metadata

# COLA2
RUN git clone https://bitbucket.org/iquarobotics/cola2_lib.git /cola2_lib && \
    cd /cola2_lib && mkdir build  && cd build  && cmake ..  && make && \
    make install
