#!/bin/bash

# reads the follwing variables, MY_PORT, SERVER_PATH

source $HOME/.config/send.cfg

scp -P $MY_PORT ./* $SERVER_PATH
