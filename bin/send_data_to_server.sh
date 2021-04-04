#!/bin/bash

# reads the follwing variables, PATH_WHERE_DATA_TO_TRANSFER_ARE

source $HOME/.config/send.cfg

scp -P 1022 $PATH_WHERE_DATA_TO_TRANSFER_ARE/* marco@neukirch.spdns.org:/home/marco/receive
