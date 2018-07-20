#Open emacs in new terminal window
gnome-terminal -e "emacs -nw main.cpp"
x-terminal-emulator -e "emacs -nw"

#Create static library
gcc -c libMystaticLib.c
ar rcs libMyStaticLib.a libMyStaticLib.o 
