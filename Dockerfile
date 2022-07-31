FROM python:3.10.5-slim-bullseye

RUN apt-get update \
    && apt-get install -y wget unzip libavahi-compat-libdnssd-dev \
    && wget https://github.com/Hcreak/HomeKit-MiAcPartnerMcn02/archive/refs/heads/master.zip \
    && unzip master.zip \
    && pip3 install HAP-python[QRCode] python-miio Flask-SQLAlchemy \
    && rm -rf master.zip \
    && apt-get purge -y wget unzip \
    && apt-get autoclean \
    && apt-get autoremove

WORKDIR /HomeKit-MiAcPartnerMcn02-master

CMD python3 -u main.py
