#!/bin/bash
<<<<<<< HEAD
echo "欢迎使用十六哥的一键搭建向导"
echo "即将搭建的是战术雷达4.27版本"
=======
echo "欢迎使用一键搭建"
echo "即将搭建的是4.26版本"
>>>>>>> xiy
echo "准备开始安装"
read -p "回车后开始安装"
echo "请输入你的内网ip" 
read -p "内网ip： " ip
<<<<<<< HEAD
cp /root/winnerpubg/restart.sh /root/restart.sh
=======
cp /root/PUBG-Radar-Onekey/restart.sh /root/restart.sh
>>>>>>> xiy
chmod +x restart.sh
wget --no-check-certificate -O shadowsocks-all.sh https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-all.sh
chmod +x shadowsocks-all.sh
./shadowsocks-all.sh 2>&1 | tee shadowsocks-all.log

<<<<<<< HEAD
echo "ss代理搭建成功，请记住连接信息"
read -p "记住了吗？任意键继续！" 
=======
echo "ss搭建成，请记住连接信息"
read -p "记住了吗？任意键继续" 
>>>>>>> xiy

curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash
source ~/.bash_profile
nvm install v9.8.0
nvm alias default v9.8.0
yum -y install gcc-c++
yum -y install flex
yum -y install bison
wget http://www.tcpdump.org/release/libpcap-1.8.1.tar.gz
tar -zxvf libpcap-1.8.1.tar.gz
cd libpcap-1.8.1
./configure
make
make install

<<<<<<< HEAD
git clone https://github.com/hy0454/scichicken.git
cd scichicken/
=======
git clone https://github.com/794959818/PUBG-Radar-Onekey.git
cd PUBG-Radar-Onekey/
>>>>>>> xiy
npm i
npm i -g pino
npm install -g forever
forever start index.js sniff eth0 $ip | pino

echo "搭建完成"
