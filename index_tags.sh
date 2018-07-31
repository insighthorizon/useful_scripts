#!/bin/bash

#create tags for emaxs - enables jumping to definitions etc

#Then, while editing your source code, when you want to jump to a declaration, press M-. 

rm -f TAGS
find . -name "*.[ch]" -print | xargs etags -a
