# vi: set nowrap:
FROM registry.centos.org/centos/centos7-atomic
MAINTAINER markus.falb@mafalb.at

COPY requirements.txt /root/requirements.txt

RUN microdnf install make sudo passwd vim-minimal git gcc python-devel python-setuptools python-docker-py shadow-utils docker-client && \
    easy_install pip && \
    pip install -r /root/requirements.txt && rm -fr /root/.cache && \
    microdnf remove gcc cpp glibc-devel glibc-headers python-devel kernel-headers && microdnf clean all

RUN useradd ansible
COPY sudo.conf /etc/sudoers.d/docker

USER ansible
VOLUME /home/ansible
WORKDIR /home/ansible
