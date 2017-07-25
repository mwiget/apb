# ansible-playbook container

[![Build Status](https://travis-ci.org/mwiget/apb.svg?branch=master)](https://travis-ci.org/mwiget/apb)

requires inventory file in the current directory and optionally .ssh with 
your private ssh key(s):

```
$ cat inventory
[lab]
vmx1 ansible_connection=local ansible_host=192.168.0.64 ansible_port=830
vmx2 ansible_connection=local ansible_host=192.168.0.65  ansible_port=830
core1 ansible_connection=local ansible_host=192.168.0.103 ansible_port=830
bbar1 ansible_connection=local ansible_host=192.168.0.104 ansible_port=830
bbar2 ansible_connection=local ansible_host=192.168.0.105 ansible_port=830
```

Execute your playbooks with the following docker run command:

```
cd
docker run -ti --rm -v $PWD:/root marcelwiget/apb <playbook>
```
