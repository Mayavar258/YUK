FROM ubuntu:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3 python3-pip -y
RUN pip3 install -U pip
WORKDIR /app/
COPY . /app/
RUN pip3 install -U -r requirements.txt
CMD python3 Yukki.py
