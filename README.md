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

Or use with podman (which is a bit nicer since you don't need elevated privileges):

```sh
podman run --rm -v "$(pwd):/home/project" -w /home/project texlive pdflatex
```

You can also use freely other common texlive-distribution programs as well instead of pdflatex
(e.g. `xelatex`, `dvipng`, ...)!

> **NOTE**
>
> If you have SELinux running (like it does on Fedora), be sure to append to the volume mounts
> the `:z` option.
>
> ```sh
> docker run --rm -u $(id -u):$(id -g) -v "\$(pwd):/home/project" -w /home/project texlive pdflatex
> # OR
> podman run --rm -v "$(pwd):/home/project:z" -w /home/project texlive pdflatex
> ```

Additionally, podman convenience bash scripts are provided so you can immediately use the
docker container without using any docker / podman commands!

```sh
./pdflatex <options>
```
