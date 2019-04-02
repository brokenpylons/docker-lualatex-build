# docker-lualatex-build
![GitHub](https://img.shields.io/github/license/brokenpylons/docker-lualatex-build.svg)
[![Build Status](https://travis-ci.org/brokenpylons/docker-lualatex-build.svg?branch=master)](https://travis-ci.org/brokenpylons/docker-lualatex-build)
![Docker Pulls](https://img.shields.io/docker/pulls/brokenpylons/lualatex-build.svg)

Image for lualatex builds with all bells and whistles. It currently includes just make and latexmk, but additional packages will be added if needed (as long as the size doesn't increase significantly).

Based on:
- brokenpylons/lualatex

Included:
- make
- latexmk

[dockerhub](https://hub.docker.com/r/brokenpylons/lualatex-build)

## Usage

```make
PROJECT=paper

.PHONY: clean

all: $(PROJECT).pdf

$(PROJECT).pdf: $(PROJECT).tex
	latexmk -lualatex -use-make $<

clean:
	latexmk -C
```

```
docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD:/data" brokenpylons/lualatex-build make
```

## See also
* [docker-lualatex](https://github.com/brokenpylons/docker-lualatex)
