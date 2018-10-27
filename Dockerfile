FROM ubuntu:18.04
MAINTAINER inabaakira <inaba.akira@gmail.com>
RUN apt update
RUN apt -y install ruby
RUN mkdir -p /books
