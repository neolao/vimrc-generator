#!/bin/bash

scriptPath="$( readlink -f "$( dirname "$0" )" )/$( basename "$0" )"
currentDirectory=$(dirname $scriptPath)

#cd $currentDirectory
echo $currentDirectory
VIMRUNTIME=$currentDirectory vim -u $currentDirectory/.vimrc $@
