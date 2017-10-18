#!/bin/bash

#
# usage: puppetapply.sh PUPPETSCRIPT
#

sudo puppet apply -t -d $1
