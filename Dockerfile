FROM ubuntu:16.04

RUN apt-get update -qy && apt-get install -y wget
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update -qy
RUN apt-get install -y python3.5 python3.5-dev python3-pip python-dev python3-dev postgresql postgresql-server-dev-all sudo
