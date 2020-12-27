#!/usr/bin/env bash
BASEDIR=~/sources
version="${1}"
chlog_msg="${2}"
if [[ "x${version}" == "x" ]]; then
    echo -n "Enter version (x.x.x): "
    read version
fi
if [[ "x${chlog_msg}" == "x" ]]; then
    echo -n "Enter changelog message: "
    read chlog_msg
fi
# Code
echo ${version} > ${BASEDIR}/swayswitch/VERSION

# Changelog
echo 'swayswitch ('${version}') unstable; urgency=low

    * '${chlog_msg}'

 -- Micke Nordin <hej@mic.ke>  '$(LC_ALL=C date "+%a, %d %b %Y %T %z")'
'| wl-copy

vim ${BASEDIR}/swayswitch/debian/changelog
cd  ${BASEDIR}/swayswitch
git commit -a -m "Bump version"
