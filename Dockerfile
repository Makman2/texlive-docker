FROM fedora:28

RUN dnf install -y texlive-scheme-full

WORKDIR /home/
