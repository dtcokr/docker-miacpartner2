# docker-miacpartner2

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dtcokr/miacpartner2/latest)
![Docker Pulls](https://img.shields.io/docker/pulls/dtcokr/miacpartner2)
![GitHub last commit](https://img.shields.io/github/last-commit/dtcokr/docker-miacpartner2)

**CREDIT:** https://github.com/Hcreak/HomeKit-MiAcPartnerMcn02

## Usage

use `host` network mode to monitor host network usage `--network=host` (**REQUIRED**)

## Docker Envs

`MCN02_IP` IP address of your Mi AC Partner

`MCN02_TOKEN` Token of your Mi AC Partner

## Example

`$ docker run --network=host -e MCN02_IP=192.168.1.2 -e MCN02_TOKEN=xxxxxxxxxxxxxxxxxx dtcokr/miacpartner2`
