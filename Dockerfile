FROM fedora:33

RUN dnf install -y texlive-scheme-full
RUN dnf install -y python3-pip
RUN python3 -m pip install pygments && dnf install -y which
RUN dnf install -y inkscape

ENV HOME /home/
RUN chmod 777 /home/
WORKDIR /home/
