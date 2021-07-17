FROM centos:7

# Base image for packaging RPMs

COPY ./fpm-0-1.x86_64.rpm /

RUN yum install -y ./fpm-0-1.x86_64.rpm rpm-build

