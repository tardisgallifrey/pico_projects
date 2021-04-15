#/bin/bash

# Check to make sure there is one folder name on the command line,
# and that it is a legal folder name, else exit
if [ "$#" -ne 1 ]; then
    echo "You did not enter a legal project folder name. Quitting."
    echo "Project folder names cannot have spaces."
    exit
fi

echo "This will create a new Raspberry Pi Pico project"
echo "in a subfolder of this folder."
echo ""
echo "Using the project folder name "$1

# Create folder
mkdir $1

# Copy generic files to new folder
cp CMakeLists.txt $1
cp generic.c $1
cp mycmake.sh $1
cp pico_sdk_import.cmake $1

# change to new folder
cd $1

# create a build folder
mkdir build

# copy cmake bash file to build folder
cp mycmake.sh build

echo ""
echo "Pico Project generated.  You are now in folder:"
echo ""
pwd

