# texlive-docker

A Dockerfile for a full texlive installation.

## Build

```sh
docker build . --tag texlive
```

## Usage

Aliases are useful to invoke commands in the container:

```sh
alias pdflatex="docker run --rm -u $(id -u):$(id -g) -v "\$(pwd):/home/project" -w /home/project texlive pdflatex"
```
