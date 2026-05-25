FROM ubuntu:latest

RUN apt-get update && apt-get install -y git python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*

ARG SJP_VERSION=main

RUN git clone --branch ${SJP_VERSION} https://github.com/MrDave/StaticJinjaPlus.git /app

WORKDIR /app

RUN pip install -r requirements.txt --break-system-packages
