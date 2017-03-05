#!/usr/bin/env bash
set -e
INPUT=upstream/output
mkdir -p output
source ${INPUT}/fordelning.sh
inkomst=$(cat ${INPUT}/pensionsratter.txt)
res=$(echo "scale=0; (${inkomst} * ${INKOMSTPENSION}) / 1" | bc -l)
echo ${res} > output/inkomstpension.txt
