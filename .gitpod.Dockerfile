FROM ubuntu:18.04

RUN apt update && apt install -y curl ca-certificates python python-pip
COPY .docker/gp_browser /gp_browser
RUN cd /gp_browser && pip install -r requirements.txt
RUN ln -s /gp_browser/gp_browser /usr/local/bin/xdg-open
RUN curl -Lo blimp https://blimp-releases.s3-us-west-1.amazonaws.com/blimp-linux-0.12.3 && chmod +x blimp && mv blimp /usr/local/bin

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
