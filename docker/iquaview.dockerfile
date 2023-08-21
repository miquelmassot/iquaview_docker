FROM ghcr.io/ocean-perception/cola2_lib:latest

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]

# IQUAVIEW
RUN pip3 install --upgrade pip && \
    pip3 install pysftp geopy dataclasses gevent bs4 black pysftp geopy Flask Flask-SocketIO gevent gevent-websocket importlib_metadata && \
    pip3 install git+https://bitbucket.org/iquarobotics/iquaview_lib.git && \
    pip3 install git+https://bitbucket.org/iquarobotics/iquaview.git

# Run iquaview
CMD ["iquaview"]