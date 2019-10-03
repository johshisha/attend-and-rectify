FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

RUN apt-get update && apt-get install -y \
    libpq-dev \
    git \
    python3.7 \
    python3-pip \
    python3-dev

WORKDIR /work
COPY requirements.txt /work/requirements.txt
RUN pip3 install -r /work/requirements.txt

COPY . /work

