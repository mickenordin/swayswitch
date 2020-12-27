#!/usr/bin/env bash
BASEDIR=~/sources
${BASEDIR}/swayswitch/packaging_scripts/version.sh
${BASEDIR}/swayswitch/packaging_scripts/reprepro.sh
${BASEDIR}/swayswitch/packaging_scripts/alien.sh
${BASEDIR}/swayswitch/packaging_scripts/cleanup.sh
