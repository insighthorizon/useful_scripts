#!/bin/bash

#creating assembly file out of exe file

(echo | objdump -d install.exe) > disassembly1.s

