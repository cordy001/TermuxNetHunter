
clear

echo " "

echo "
CCCCCC   OOOOOO   RRRRRR    DDDD    YY    YY
CC       OO  OO   RR  RR    DD  DD   YY  YY  
CC       OO  OO   RRRRR     DD  DD     YY
CCCCCC   OOOOOO   RR   RR   DDDD       YY
"

echo " "
echo "##############################"
echo "Starting Set Up NetHunter Termux"
echo "Automation tools by Cordy"
echo "±+++++++++++++++++++++++++++++Beta 0.1124.03"
echo " "

apt update && apt upgrade -y

termux-setup-storage

echo " "
echo "##############################"
echo "Extracting NetHunter Fragments"
echo "##############################"
echo " "

cd $HOME/TermuxNetHunter

FILE="$HOME/kali-nethunter-daily-dev-rootfs-full-arm64.tar.xz"

if [ -f "$FILE" ]; then

echo "File Already Exist"

else 

apt install p7zip -y

7z x NHfragments/kali-nethunter_fragments.zip.001 -o"$HOME/"

fi



echo " "
echo "##############################"
echo "Installing Wget"
echo "##############################"
echo " "

apt install wget -y

echo " "
echo "##############################"
echo "Installing Net Hunter Rootless"
echo "##############################"
echo " "
wget -O install-nethunter-termux https://offs.ec/2MceZWr

chmod +x install-nethunter-termux

echo "
-------
Don’t forget to follow me on Tiktok for more automation tools I will make in the future🧑‍💻🧑‍💻
-------
"

echo " "
echo "++++++++++++++++++++++++++++++"
echo "Click enter to open nethunter installer"
echo " "
read
echo "Cleaning Fragments"
rm -rf $HOME/TermuxNetHunter/NHfragments
echo "Done."
./install-nethunter-termux
