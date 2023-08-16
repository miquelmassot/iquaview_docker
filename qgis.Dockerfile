FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/bash", "-c"]

# Add deb https://qgis.org/ubuntu-ltr bionic main to /etc/apt/sources.list file to update your system repositories.
RUN apt-get update && apt-get install -y gnupg software-properties-common wget
RUN mkdir -m755 -p /etc/apt/keyrings && wget -O /etc/apt/keyrings/qgis-archive-keyring.gpg https://download.qgis.org/downloads/qgis-archive-keyring.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/qgis-archive-keyring.gpg] https://qgis.org/ubuntu-ltr focal main" >> /etc/apt/sources.list.d/qgis.list

RUN apt-get update && apt-get install -y --no-install-recommends  \
    git \
    qgis  \
    qgis-plugin-grass \
    && rm -rf /var/lib/apt/lists/*

# Run iquaview
CMD ["qgis"]