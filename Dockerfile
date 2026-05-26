FROM ubuntu:latest

WORKDIR /app

ADD --checksum=sha256:30d9424df1eddb73912b0e2ad5375fa2c876c8e30906bec91952dfb75dcf220b \
    https://github.com/MrDave/StaticJinjaPlus/archive/refs/tags/0.1.1.tar.gz \
    /tmp/sjp.tar.gz

RUN apt-get update && apt-get install -y python3 python3-pip tar \
    && tar xzf /tmp/sjp.tar.gz --strip-components=1 -C /app \
    && rm /tmp/sjp.tar.gz \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -r requirements.txt --break-system-packages
