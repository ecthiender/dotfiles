#!/bin/bash

set -euo pipefail

setup_game_env() {
  echo "[ecth-setup] Setting up the game env.."
  # set env vars to force xplane to use nvidia for vulkan
  export __NV_PRIME_RENDER_OFFLOAD=1
  export __GLX_VENDOR_LIBRARY_NAME=nvidia
  export VK_ICD_FILENAMES="/usr/share/vulkan/icd.d/nvidia_icd.json"

  # enable these for debugging if required
  #export VK_LOADER_DEBUG=all
  #export __GL_SYNC_TO_VBLANK=0

  # set the power profile to get max out of our CPU
  powerprofilesctl set performance
}

reset_env() {
  echo "[ecth-setup] Resetting the game env.."
  # reset everything we setup
  unset __NV_PRIME_RENDER_OFFLOAD
  unset __GLX_VENDOR_LIBRARY_NAME
  unset VK_ICD_FILENAMES

  powerprofilesctl set balanced
}

trap reset_env SIGINT SIGTERM SIGQUIT SIGABRT SIGKILL

setup_game_env
./X-Plane-x86_64
reset_env
