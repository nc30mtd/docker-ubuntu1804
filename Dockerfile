FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y unzip zip curl cron git nkf
# RUN apt-get install -y sysv-rc-conf
RUN apt-get install -y vim
RUN apt-get install -y nkf
RUN apt-get install -y locales
RUN sed -i -E 's/# (ja_JP.UTF-8)/\1/' /etc/locale.gen
RUN locale-gen
RUN apt-get install -y iproute2
RUN apt-get install -y iputils-ping
RUN apt-get install -y wget