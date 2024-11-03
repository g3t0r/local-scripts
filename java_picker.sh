#!/usr/bin/bash
source ~/.bashrc
sdk use java $( sdk list java | grep installed | awk -F \| '{print $NF}' | dmenu )

