FROM ubuntu:20.04 AS release

ENV TZ=Russia/Moscow

# Make the "en_US.UTF-8" locale
RUN apt-get -y update && \
    apt-get install -y tzdata net-tools iputils-ping
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["echo", "container № 1"]
CMD ["tail", "-f", ">>", "/dev/null"]