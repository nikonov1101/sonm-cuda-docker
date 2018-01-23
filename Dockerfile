FROM nvidia/cuda:8.0-devel

WORKDIR /usr/src/app

COPY . .
RUN apt-get update && apt-get install -y python3 python3-pip && \
    echo "/usr/local/cuda-8.0/targets/x86_64-linux/lib/stubs/" >> /etc/ld.so.conf.d/nvidia.conf && \
    dpkg -i dist/libcudnn5_5.1.10-1+cuda8.0_amd64.deb

