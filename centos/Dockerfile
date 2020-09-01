FROM centos:latest

RUN dnf -y update &&\
    dnf -y install glibc-langpack-es

CMD export LANG=es_ES.UTF-8 &&\
    export LANGUAGE=es_ES.UTF-8

RUN dnf -y install openssh-server openssh-clients mysql unzip  &&\
    systemctl enable sshd &&\
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    ./aws/install  

RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod -R 700 /home/remote_user/

RUN ssh-keygen -A && rm -rf /run/nologin

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys
COPY ./scripts/my.cnf /etc/my.cnf

RUN chown -Rf remote_user:remote_user /home/remote_user && \
    chmod -R 644 /home/remote_user/.ssh/authorized_keys

CMD /usr/sbin/sshd -D
