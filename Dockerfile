FROM brokenpylons/lualatex:v0.0.5
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get --no-install-recommends install -y \
        make && \
    rm -rf /var/lib/apt/lists/*

RUN tlmgr install \
        latexmk && \
    rm -rf /usr/local/texlive/texmf-var/*
