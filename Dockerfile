FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip tar \
    && rm -rf /var/lib/apt/lists/*

ARG SJP_VERSION=0.1.1

ADD https://github.com/MrDave/StaticJinjaPlus/archive/refs/tags/${SJP_VERSION}.tar.gz \
    /tmp/sjp.tar.gz

RUN mkdir -p /app && tar -xzf /tmp/sjp.tar.gz -C /app --strip-components=1 && rm /tmp/sjp.tar.gz

WORKDIR /app

RUN pip install -r requirements.txt --break-system-packages
