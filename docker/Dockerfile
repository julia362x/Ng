FROM node:12-buster

WORKDIR /root

COPY . .

RUN bash set.sh

ENV PATH="/root/rclone-v1.56.2-linux-amd64:$PATH"

ENV PATH="/root/aria2-1.36.0-linux-gnu-64bit-build1:$PATH"

CMD bash /root/run.sh
