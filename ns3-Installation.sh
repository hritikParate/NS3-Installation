#!/bin/bash




echo "Updating Repositories..."
sudo apt update

echo "starting installation..."

sudo apt install g++ python3 python3-dev pkg-config sqlite3 cmake python3-setuptools git qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools gir1.2-goocanvas-2.0 python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython3 openmpi-bin openmpi-common openmpi-doc libopenmpi-dev autoconf cvs bzr unrar gsl-bin libgsl-dev libgslcblas0 wireshark tcpdump sqlite sqlite3 libsqlite3-dev  libxml2 libxml2-dev libc6-dev libc6-dev-i386 libclang-dev llvm-dev automake python3-pip libxml2 libxml2-dev libboost-all-dev python-is-python3 mercurial mercurial gnuplot 


echo "Done :)"




echo "Do you want to download ns-3.29? (y/n)"
read answer


if [ "$answer" == "y" ] || [ "$answer" == "Y" ]; then
	echo "You chose to proceed with download..."
	cd ~/Downloads
	wget https://www.nsnam.org/releases/ns-allinone-3.29.tar.bz2
	tar jxvf ns-allinone-3.29*

elif [ "$answer" == "n" ] || [ "$answer" == "N" ]; then
	echo "You chose to not proceed."

else 
	echo "Invalid input. Please enter y or n."
fi

