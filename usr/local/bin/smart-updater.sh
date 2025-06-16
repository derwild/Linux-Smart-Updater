#!/bin/bash
IDLE_TIME=$(xprintidle)
MAX_IDLE=600000
if [ "$IDLE_TIME" -gt "$MAX_IDLE" ]; then
    echo "[Smart Updater] System idle. Starting update..."
    apt update && apt upgrade -y
    flatpak update -y
else
    echo "[Smart Updater] System active. Skipping update."
fi