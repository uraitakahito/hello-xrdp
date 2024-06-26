FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo

RUN apt-get update
RUN apt-get -y install ubuntu-desktop

RUN rm /run/reboot-required*

RUN useradd -m hoge
RUN gpasswd -a hoge sudo
RUN echo 'hoge:hoge' | chpasswd

RUN apt install -y xrdp
RUN adduser xrdp ssl-cert

RUN sed -i '3 a echo "\
export GNOME_SHELL_SESSION_MODE=ubuntu\\n\
export XDG_SESSION_TYPE=x11\\n\
export XDG_GURRENT_DESKTOP=ubuntu:GNOME\\n\
export XDG_CONFIG_DIRS=/etc/xdg/xdg-ubuntu:/etc/xdg\\n\
" > ~/.xsessionrc' /etc/xrdp/startwm.sh

EXPOSE 3389
CMD service dbus start; /usr/lib/systemd/systemd-logind & service xrdp start ; bash
