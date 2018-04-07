#!/bin/bash

#using diff for comparing two "files", using < to put echo output there instead of files, using | - pipeline to fill echo with sha256sum or md5sum output

diff  <(echo "da9510fd2a1a213db7a2db7f3db81086c8d6699078bbdbd940a7b228a18f3624  Archlinux_2017.08_KDE-VB-64bit.7z" ) <(echo | sha256sum Archlinux_2017.08_KDE-VB-64bit.7z)
