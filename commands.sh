
#Open emacs in new terminal window
gnome-terminal -e "emacs -nw main.cpp"
x-terminal-emulator -e "emacs -nw"

#Create static library (.a)
gcc -c libMystaticLib.c
ar rcs libMyStaticLib.a libMyStaticLib.o 
#Compile program with static library
gcc -c main.c -o main.o
gcc -o main.o -L. -lMyStaticLib

#Create dynamic/shared library (.so)
gcc -shared -fPIC -o liblibrary.so library.c
#Compile program with shared library
gcc application.c -L /home/itwillwork/Documents/libTest -llibrary -o sample
#Configure environment variable
export LD_LIBRARY_PATH=/home/itwillwork/Documents/libTest:$LD_LIBRARY_PATH

#How to run programs in terminal background
./add-server & # starts running dbus_test program in background
#same can be done with
./add-server
ctrl - z
bg
# to kill the process:
fg
ctrl - c
#or:
kill %n # n is process number outputed by bg command
#display background processes
jobs

#search
find ./ -type f -name "*.log"

# Squash git commits into one TROLOLO
git rebase -i HEAD~4 #in this case squish 4 of them
#chose one with pick and rest with squash
#chose new commit message
git push --force origin master

# Some regular expression's gymnastics
grep -Ea '^\s+[1-9][0-9]+' testdata.txt
grep -Ea '\s+[1-9][0-9]+\s*$' testdata.txt
sed 's/\^T//g' testdata.txt

sudo apt-get install poppler-utils
pdftotext Basket.pdf out.txt

