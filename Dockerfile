FROM nvcr.io/nvidia/cuda:11.3.0-cudnn8-devel-ubuntu20.04

RUN apt-get update && apt-get install -y sudo wget
WORKDIR /opt

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/miniconda3 && \
    rm -r Miniconda3-latest-Linux-x86_64.sh

ENV PATH /opt/miniconda3/bin:$PATH

RUN pip install --upgrade pip && conda update -n base -c defaults conda && conda init


CMD ["bin/bash"]