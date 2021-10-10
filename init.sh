#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
cp /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.bak

yum install -y wget && wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo && yum clean all &&  yum makecache


yum update -y
yum install curl wget -y
yum install wget iftop iotop nmap -y
yum install wget curl iftop iotop -y
yum install epel-release -y
yum install s3fs-fuse -y
yum install git -y

yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_pro.sh && sh install.sh
cp /www/server/panel/class/common.py /www/server/panel/class/common.py.bak
touch /www/server/panel/data/userInfo.json
echo > /www/server/panel/data/userInfo.json
sed -i "s/data = panelAuth.panelAuth().get_order_status(None);/data = {'status':True,'msg' : {'endtime':32503651199}}/g"  /www/server/panel/class/common.py
service bt restart

mkdir /www/spaces
mkdir /www/git

cd
echo NRUNJRC3GLJFW36VQRKO:MU5x+Mdg1BSpr8TnFmkXYWsHacw2YRxeqZdALlcjf9U >  ~/.passwd-s3fs
chmod 600  ~/.passwd-s3fs



git config --list
git config --global user.email "2371406255@qq.com"
git config --global user.name "2371406255"

cd  ~/
touch .git-credentials
echo "https://{2371406255@qq.com}:{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}@github.com" > .git-credentials
git config --global credential.helper store
cat  ~/.gitconfig


cd 
rm /root/.ssh/ -Rf
git clone https://github.com/2371406255/.ssh.git
chmod -R 700 /root/.ssh && chown -R root /root/.ssh


