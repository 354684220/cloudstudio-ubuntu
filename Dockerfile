# Cloud Studio 从 Git 仓库导入用的开发环境
# 基础镜像: Ubuntu 18.04 LTS (Bionic Beaver)
FROM ubuntu:18.04

# 避免交互式配置卡住
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai

# 设置时区和 UTF-8 locale
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 预装基础工具链
RUN apt-get update && apt-get install -y --no-install-recommends \
        ca-certificates \
        apt-utils \
        locales \
        tzdata \
        sudo \
        wget \
        curl \
        vim \
        nano \
        git \
        build-essential \
        make \
        cmake \
        pkg-config \
        unzip \
        zip \
        tree \
        htop \
        net-tools \
        iputils-ping \
        dnsutils \
        openssh-client \
        software-properties-common \
    && locale-gen en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/*

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

WORKDIR /workspace
