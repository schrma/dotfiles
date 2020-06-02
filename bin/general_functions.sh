#!/bin/bash

function debug_print(){
  if [ $DEBUG -eq 1 ]; then
    echo "${1}"
  fi
}
