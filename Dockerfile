FROM alpine:3.6

RUN apk add --no-cache ansible py2-pip ca-certificates py2-paramiko shadow openssh-client \
  py2-setuptools py2-paramiko py2-lxml py2-six openssl \
  py2-zmq py-twisted openssh-client py2-packaging py2-parsing libxml2 libxslt \
  py2-cryptography \
  && pip install --upgrade pip \
  && pip install junos-eznc \
  && ansible-galaxy install Juniper.junos

COPY ansible.cfg /etc/ansible/

WORKDIR /root
VOLUME /root 

ENTRYPOINT ["/usr/bin/ansible-playbook"]
