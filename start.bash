#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

export VAGRANT_HOME=$DIR/vagranthome
export VBOX_USER_HOME=$DIR/vbox
VBoxManage setproperty machinefolder $VBOX_USER_HOME
vagrant plugin install vagrant-disksize
#vagrant plugin install vagrant-libvirt
vagrant up
#VBoxManage setproperty machinefolder default

