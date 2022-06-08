FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/Veronica0706/tg-stream-video
RUN cd tg-stream-video
WORKDIR tg-stream-video
RUN pip3 install -U -r requirements.txt
CMD python3 -m lib
