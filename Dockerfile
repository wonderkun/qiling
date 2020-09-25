FROM python:3.6-alpine


ENV PIP_NO_CACHE_DIR=1

RUN apk add --no-cache \
    gcc \
    make \
    cmake \
    libtool \
    automake \
    autoconf \
    g++ \
    linux-headers \
    git \
    libstdc++ \
    bash \
    vim \
    file

# RUN  pip3 install capstone>=4.0.1  unicorn>=1.0.2rc4 pefile>=2019.4.18 python-registry>=1.3.1 keystone-engine>=0.9.2

RUN mkdir /qiling

COPY ./requirements.txt /qiling/requirements.txt

RUN pip3 install -r /qiling/requirements.txt

WORKDIR /qiling

CMD ["tail","-f","/dev/null"]
