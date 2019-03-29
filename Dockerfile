FROM brokenpylons/lualatex
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get --no-install-recommends install -y \
        latexmk \
        make && \
    rm -rf /var/lib/apt/lists/*
