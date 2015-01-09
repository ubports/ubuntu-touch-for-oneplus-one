# ubuntu-touch-for-oneplus-one
Use this if you want to build Ubuntu touch for oneplus one


###Work In Progres
This is not a yet a working project

# Before Starting

1. You will need a Ubuntu!

2. You will need to install packages which are used to build and donwload all repositories :

 ### Automatic setup (remember do this will install in you curent directory:
  ```
  bash <(curl -s https://raw.githubusercontent.com/ubuntu-touch-oneplus-one/ubuntu-touch-for-oneplus-one/master/auto-setup.sh)
  ```
 ### Manual setup
 ```
  sudo apt-get install git gnupg flex bison gperf build-essential \
  zip bzr curl libc6-dev libncurses5-dev:i386 x11proto-core-dev \
  libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 \
  libgl1-mesa-dev g++-multilib mingw32 tofrodos \
  python-markdown libxml2-utils xsltproc zlib1g-dev:i386 schedtool
 ```
  On Utopic (and maybe other) the 4.8 version of g++ is needed:
 ```
 sudo apt-get install g++-4.8-multilib
 ```
 Before 14.04 Trusty you'll also need to set up the tools PPA.     (https://wiki.ubuntu.com/Touch/Install#Step_1_-_Desktop_Setup)
 Then you need to install phablet-tools:
 ```
 sudo apt-get install phablet-tools
  ```
 Downloads repositories
 ```
 mkdir -p /path/to/phablet; cd /path/to/phablet
 repo init -u https://code-review.phablet.ubuntu.com/p/aosp/platform/manifest.git -b phablet-4.4.2_r1
 repo sync -j 8
 ```
 
 # Build
 ### work in progres
