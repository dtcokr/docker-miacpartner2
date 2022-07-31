FROM python:3.10.5-slim-bullseye

RUN apt-get update \
    && apt-get install -y wget unzip libavahi-compat-libdnssd-dev gcc build-essential \
    && wget https://github.com/Hcreak/HomeKit-MiAcPartnerMcn02/archive/refs/heads/master.zip \
    && unzip master.zip \
    && pip install --upgrade pip \
    && pip install HAP-python[QRCode] python-miio Flask-SQLAlchemy \
    && rm -rf master.zip \
    && apt-get purge -y wget unzip gcc build-essential \
    && apt-get autoclean \
    && apt-get autoremove

WORKDIR /HomeKit-MiAcPartnerMcn02-master

CMD python3 -u main.py
