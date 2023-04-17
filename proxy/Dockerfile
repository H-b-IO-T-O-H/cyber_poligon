FROM ubuntu:20.04 AS release

ENV TZ=Russia/Moscow

# Make the "en_US.UTF-8" locale
RUN apt-get -y update && \
    apt-get install -y tzdata net-tools iputils-ping
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt -y install ca-certificates wget net-tools gnupg
RUN wget https://as-repository.openvpn.net/as-repo-public.asc -qO /etc/apt/trusted.gpg.d/as-repository.asc
RUN echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/as-repository.asc] http://as-repository.openvpn.net/as/debian focal main">/etc/apt/sources.list.d/openvpn-as-repo.list
#RUN apt update && apt -y install openvpn-as

#CMD ["tail", "-f", ">>", "/dev/null"]