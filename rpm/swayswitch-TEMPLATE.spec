Buildroot: /home/micke/sources/swayswitch-##VERSION##
Name: swayswitch
Version: ##VERSION##
Release: 1
Requires: python3-wxpython4
Summary: SwaySwitch is a simple window switcher for sway
License: GPLv3+ 
Distribution: Fedora

%define _binary_filedigest_algorithm 2
%define _rpmdir ../
%define _rpmfilename %%{NAME}-%%{VERSION}.noarch.rpm
%define _unpackaged_files_terminate_build 0

%description

SwaySwitch is a simple window switcher for sway:
<https://swaywm.org>

%files
"/usr/bin/swayswitch"
%dir "/usr/share/doc/swayswitch/"
"/usr/share/doc/swayswitch/changelog.gz"
"/usr/share/doc/swayswitch/copyright"
