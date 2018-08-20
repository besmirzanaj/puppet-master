#!/bin/bash

node_def="/etc/puppetlabs/code/environments/production/bash-enc/${1}.yaml"

[ -f $node_def ] && cat $node_def
