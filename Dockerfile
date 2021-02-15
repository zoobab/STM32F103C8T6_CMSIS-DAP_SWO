FROM debian:jessie-slim
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y -q && apt-get install -y -q sudo make python gcc-arm-none-eabi git-core libnewlib-arm-none-eabi
COPY . /code
WORKDIR /code/
RUN make
