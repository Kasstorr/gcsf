FROM ubuntu:18.10
MAINTAINER Marco Faggian <m@marcofaggian.com>

RUN apt-get update
RUN apt install -y libfuse-dev pkg-config curl apt-utils file sudo openssl libssl-dev 
RUN curl https://sh.rustup.rs -sSf | sh
RUN cargo install gcsf 

VOLUME [ "/drive" ]

EXPOSE 8081

CMD [ "/root/.cargo/bin/gcsf","login","gdrive"]
