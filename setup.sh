
clear

echo " "
echo "++++++++++++++++++++++++++++++"
echo "Starting Set Up Kali Termux Automation by Cordy"
echo "±+++++++++++++++++++++++++++++"
echo " "

apt update && apt upgrade -y

termux-setup-storage

echo " "
echo "++++++++++++++++++++++++++++++"
echo "Extracting NetHunter Fragments"
echo "±+++++++++++++++++++++++++++++"
echo " "

apt install p7zip -y

7z x NHfragments/kali-nethunter_fragments.zip.001 -o$HOME/TermuxNetHunter

echo " "
echo "++++++++++++++++++++++++++++++"
echo "Installing Wget"
echo "±+++++++++++++++++++++++++++++"
echo " "

apt install wget -y

echo " "
echo "++++++++++++++++++++++++++++++"
echo "Installing Net Hunter Rootless"
echo "±+++++++++++++++++++++++++++++"
echo " "
wget -O install-nethunter-termux https://offs.ec/2MceZWr

chmod +x install-nethunter-termux

./install-nethunter-termux
