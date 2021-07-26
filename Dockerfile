FROM python:3.9.6-slim-buster

RUN apt-get update
RUN apt-get install -y wget unzip libavahi-compat-libdnssd-dev
RUN wget https://github.com/Hcreak/HomeKit-MiAcPartnerMcn02/archive/refs/heads/master.zip
RUN unzip master.zip
RUN pip3 install HAP-python[QRCode] python-miio Flask-SQLAlchemy

WORKDIR /HomeKit-MiAcPartnerMcn02-master

CMD python3 -u main.py