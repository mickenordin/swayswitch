#!/usr/bin/env bash
# Where I keep the sources
BASEDIR=~/sources
# Version of swayswitch
VERSION=$(cat ${BASEDIR}/swayswitch/VERSION)

# Change to source dir
cd ${BASEDIR}/swayswitch

# Build deb
dpkg-buildpackage -us -uc

# Add binary and source to repo
reprepro --basedir ${BASEDIR}/repo/debian includedeb unstable ${BASEDIR}/swayswitch_${VERSION}_all.deb
reprepro --basedir ${BASEDIR}/repo/debian -S utils --priority optional includedsc unstable ${BASEDIR}/swayswitch_${VERSION}.dsc
