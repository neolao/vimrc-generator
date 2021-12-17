#!/bin/bash

scriptPath="$( readlink -f "$( dirname "$0" )" )/$( basename "$0" )"
currentDirectory=$(dirname $scriptPath)

VIMRUNTIME=$currentDirectory vim -u $currentDirectory/.vimrc $@
