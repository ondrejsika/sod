# FROM debian:9 as docker_client
# ENV DOCKERVERSION=18.09.0
# RUN apt update \
#   && apt install -y curl tar \
#   && curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
#   && mv docker-${DOCKERVERSION}.tgz docker.tgz \
#   && tar xzvf docker.tgz \
#   && mv docker/docker /usr/local/bin \
#   && rm -r docker docker.tgz

FROM python:3.7-slim
WORKDIR /app
RUN pip install flask
RUN pip install docker
COPY sod .
ENTRYPOINT [ "./sod" ]