FROM centos:7

RUN yum install -y make git freeglut-devel net-tools xorg-x11-server-Xvfb epel-release wget

RUN yum install -y install x11vnc python-pip numpy xdotool xterm firefox openbox @X11 
RUN pip install websockify

# get latest novnc
WORKDIR /novnc
RUN git clone https://github.com/novnc/noVNC.git

COPY runVNCserver.sh /root/.vnc/runVNCserver.sh
ENTRYPOINT /root/.vnc/runVNCserver.sh