#Open emacs in new terminal window
gnome-terminal -e "emacs -nw main.cpp"
x-terminal-emulator -e "emacs -nw"

#Create static library
gcc -c libMystaticLib.c
ar rcs libMyStaticLib.a libMyStaticLib.o 

#How to run programs in terminal background
./add-server & # starts running dbus_test program in background
#same can be done with
./add-server
ctrl - z
bg
# to kill the process:
fg
ctrl - c
#display background processes
jobs

