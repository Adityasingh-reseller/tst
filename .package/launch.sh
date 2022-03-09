#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export GPHISHER_ROOT="/data/data/com.termux/files/usr/opt/gphisher"
else
	export GPHISHER_ROOT="/usr/opt/gphisher"
fi

cd $GPHISHER_ROOT
bash ./gphisher.sh
