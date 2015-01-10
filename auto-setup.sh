#!/bin/bash
tools()
{
echo "Starting: install all tools that is needed to build ubuntu touch"
sleep 2
sudo apt-get install git gnupg flex bison gperf build-essential \
zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
libgl1-mesa-dev g++-multilib mingw32 tofrodos \
python-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool
sudo apt-get install g++-4.8-multilib phablet-tools
echo "Done installing tools"
}
setup()
{
echo "Starting: download the ubuntu touch repositories"
sleep 2
mkdir -p phablet-dev-bootstrap
phablet-dev-bootstrap phablet-dev-bootstrap
echo "Done setup repositories"
}
setupc()
{
echo "continueing: download the ubuntu touch repositories"
sleep 2
phablet-dev-bootstrap -c phablet-dev-bootstrap
echo "Done setup repositories"
}

usage()
{
cat << EOF
usage: $0 options

Auto setup toos for ubuntu touch for oneplus one

OPTIONS:
   -h      Show Help
   -s      This will do a normal setup
   -c	   Continue download the ubuntu touch repositories
   -n	   This will Only download the ubuntu touch repositories
   -t      This will Only install toos that is needed to build ubuntu touch

EOF
}
UBUNTU=`cat /etc/issue`
if [[ $UBUNTU == *"Ubuntu"* ]]
then
	if [[ $UBUNTU == *"14.04"* || $UBUNTU == *"14.10"* ]]
	then
		while getopts “htnsc” OPTION
		do
  		   case $OPTION in
			h)
			usage
			exit
			;;
			t)
			tools
			exit
			;;
			c)
			setupc
			exit
			;;
			n)
			setup
			exit
			;;
			s)
			tools
			setup
			exit
			;;
			?)
			usage
			exit
			;;
		   esac
		done
		usage
		exit
	else
		echo "Autosetup ONLY works for ubuntu 14.04 and 14.10 at the moment, please follow the README.md from my github repository (https://github.com/ubuntu-touch-oneplus-one/ubuntu-touch-for-oneplus-one)"
	fi
else
echo "This only works for ubuntu"
fi

