
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
echo "±+++++++++++++++++++++++++++++Beta 1.1124.03"
echo " "

apt update && apt upgrade -y

termux-setup-storage

echo " "
echo "##############################"
echo "Extracting NetHunter Fragments"
echo "##############################"
echo " "

cd $HOME/TermuxNetHunter

FILE="$HOME/kali-nethunter-rootfs-full-arm64.tar.xz"

if [ -f "$FILE" ]; then

echo "File Already Exist"

else 

apt install p7zip -y

7z x NHfragments/kali-nethunter_fragments.zip.001 -o"$HOME/"

mv $HOME/kali-nethunter-daily-dev-rootfs-full-arm64.tar.xz $HOME/kali-nethunter-rootfs-full-arm64.tar.xz

fi

mv $HOME/TermuxNetHunter/install-nethunter-termux $HOME/

chmod +x $HOME/install-nethunter-termux

./$HOME/install-nethunter-termux


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

nh

echo 'exec zsh' >> ~/.bashrc

curl -fsSL https://archive.kali.org/archive-key.asc | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/kali-archive.gpg

sudo apt update

chown -R postgres:postgres /var/lib/postgresql/17/main

sudo apt upgrade -y

sudo apt --fix-broken install

exit

echo "Cleaning 🧹"
rm -rf $HOME/TermuxNetHunter $HOME/install-nethunter-termux

echo "Done."
