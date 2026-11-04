# cloudstudio-ubuntu

Cloud Studio 从 Git 仓库导入用的 Ubuntu 开发环境模板。

## 分支与 Ubuntu 版本

| 分支 | 基础镜像 | Ubuntu 版本 |
|---|---|---|
| `main` | `ubuntu:20.04` | Ubuntu 20.04 LTS (Focal) |
| `ubuntu18` | `ubuntu:18.04` | Ubuntu 18.04 LTS (Bionic) |

## 预装内容

基础工具链：`build-essential`、`git`、`curl`、`wget`、`vim`、`sudo`、`cmake`、`unzip`、`htop`、`net-tools`、`openssh-client`、`tzdata`（时区 Asia/Shanghai）、`locales`（en_US.UTF-8）。

## 在 Cloud Studio 中使用

1. 打开 Cloud Studio → 右上角「创建应用」→「从 Git 仓库导入」。
2. 仓库地址填写（注意末尾分支后缀）：

   - Ubuntu 20.04（main 分支）：
     ```
     https://github.com/354684220/cloudstudio-ubuntu.git
     ```
   - Ubuntu 18.04（ubuntu18 分支）：
     ```
     https://github.com/354684220/cloudstudio-ubuntu.git#ubuntu18
     ```
3. 填写应用标题，点击「创建」。Cloud Studio 会读取仓库根目录的 `Dockerfile` 构建环境。

> 注意：仓库必须为 Public（Cloud Studio 暂不支持导入私有仓库）。
