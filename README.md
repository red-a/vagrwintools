I am editing the README file. Adding some more details about the project description.

# vagrwintools

Runing up two virtual machines: centos7 and win2012r2

```sh
$ vagrant up
```

## win2012r2

Vagrant runs a provision script which configures windows machine for  ansible master

See more details [Windows System Prep](https://docs.ansible.com/ansible/2.3/intro_windows.html#windows-system-prep)

## Centos7

Before run playbook install ansible and required plugins

```sh
$ sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
$ sudo python get-pip.py
$ sudo pip install ansible pywinrm[credssp]
```

## Ansible role wintools

```sh
$ sudo ansible-playbook -i inventory.yml wintools.yml
```

Deploy Chrome, Firefox, any example with template, install IIS (Web-Server only) on remote windows machine
