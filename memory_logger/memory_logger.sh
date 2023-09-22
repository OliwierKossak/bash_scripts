#!/bin/bash


if [ ! -d "$HOME/performance" ]; then
	mkdir "$HOME/performance"
else
	echo "dir already exists"
fi
free >> $HOME/performance/memory.log
	
