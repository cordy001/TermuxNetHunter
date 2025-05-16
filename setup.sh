

echo "++++++++++++++++++++++++++++++"
echo "Starting Set Up Kali Termux Automation by CordyPH🇵🇭"
echo "±+++++++++++++++++++++++++++++"

apt update && apt upgrade -y

termux-setup-storage

echo "++++++++++++++++++++++++++++++"
echo "Installing Wget"
echo "±+++++++++++++++++++++++++++++"

apt install wget -y

echo "++++++++++++++++++++++++++++++"
echo "Installing Net Hunter Rootless"
echo "±+++++++++++++++++++++++++++++"

wget -O install-nethunter-termux https://offs.ec/2MceZWr

chmod +x install-nethunter-termux

./install-nethunter-termux
