#!/bin/bash

sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python get-pip.py
sudo pip install ansible pywinrm[credssp]
