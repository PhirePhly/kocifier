#!/usr/bin/env bash

shopt -s extglob
set -o errtrace
set -o errexit

function raspbian_update_packages {
  sudo apt-get -y update
  sudo apt-get -y upgrade
}


function raspbian_install_software {
  sudo apt -y install `cat ./raspkids_packages | tr -s '\n' ' '`
}


function raspbian_kocify {
  raspbian_update_packages
  raspbian_install_software
  # Change the wallpaper using commands
  # Install Kids Ruby
  # Change regional formats
  # Configure input methods
  # remove_keyboard_packages
  # install then remove keyboard packages?
  # locales - Change the timezone to Mexico City
  # Install Language Pack support for Spanish
}

##########################
# Raspbian customization #
##########################

raspbian_kocify

