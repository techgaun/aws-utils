#!/bin/bash

# Author: Samar
# Common functions and variables for all other AWS utils

default_err="Unknown error occurred"
author="techgaun"
version="0.1"
red='\033[0;31m'
green='\033[0;32m'
nc='\033[0m'

error() {
    msg="${1:-$default_err}"
    echo -e "${red}${msg}${nc}"
    exit 1
}

msg() {
    msg="${1:-nothing}"
    echo -e "${green}${msg}${nc}"
}

init_check() {
  if [[ ! -f "${HOME}/.aws/credentials" && "${AWS_ACCESS_KEY_ID}" == "" ]]; then
    error "Configure aws cli first!"
  fi
}
