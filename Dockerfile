FROM airdock/oraclejdk:1.8

# Install dependencies
RUN set -ex && \
  apt-get update && \
  apt-get -y install vim wget unzip locales && \
  rm -rf /var/lib/apt/lists/* && \
  locale-gen C.UTF-8 && \
  mkdir -p /opt/arthas && \
  wget https://arthas.aliyun.com/download/latest_version?mirror=aliyun -O /opt/arthas/arthas-bin.zip && \
  unzip /opt/arthas/arthas-bin.zip -d /opt/arthas && \
  rm -f /opt/arthas/arthas-bin.zip

ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV TZ=Asia/Shanghai

