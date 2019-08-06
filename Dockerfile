FROM fedora:28

RUN dnf install -y texlive-scheme-full
RUN python3 -m pip install pygments && dnf install -y which

ENV HOME /home/
RUN chmod 777 /home/
WORKDIR /home/
