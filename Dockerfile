FROM fedora:28

RUN dnf install -y texlive-scheme-full

ENV HOME /home/
RUN chmod 777 /home/
WORKDIR /home/
