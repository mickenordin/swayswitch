#!/usr/bin/env bash
# This is where I keep my sources
BASEDIR=~/sources
# Version of swayswitch
VERSION=$(cat ${BASEDIR}/swayswitch/VERSION)

cd ${BASEDIR}

# Import signing key
sudo rpm --import ${BASEDIR}/repo/PUBLIC.KEY 

# Convert deb to rpm
sudo alien -g -r ${BASEDIR}/swayswitch_${VERSION}_all.deb

# Remove generated specfile
sudo rm ${BASEDIR}/swayswitch-${VERSION}/swayswitch-*.spec

# Replace with our own
sed "s/##VERSION##/${VERSION}/" ${BASEDIR}/swayswitch/rpm/swayswitch-TEMPLATE.spec | sudo tee ${BASEDIR}/swayswitch-${VERSION}/swayswitch-${VERSION}.spec

# Change to build dir
cd swayswitch-${VERSION}

# Build rpm and put in repo
cp ${BASEDIR}/swayswitch/rpm/macros ~/.rpmmacros
sudo rpmbuild --buildroot=$(pwd) -bb swayswitch-${VERSION}.spec
sudo chown ${USER}:${USER} ${BASEDIR}/swayswitch-${VERSION}.noarch.rpm 
rpm --addsign ${BASEDIR}/swayswitch-${VERSION}.noarch.rpm
cp ${BASEDIR}/swayswitch-${VERSION}.noarch.rpm ${BASEDIR}/repo/rpm/
createrepo_c ${BASEDIR}/repo/rpm/
