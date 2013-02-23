#请在 ~/.bashrc 文件最后添加如下内容

########################Start########################
#SOEASYUBUNTU=/home/kjlmfe/Dropbox/soEasyUbuntu/
#. "$SOEASYUBUNTU"kjbash.bash
########################End###########################

alias myip="ifconfig eth0 | grep 'inet addr' | sed 's/^.*inet addr://g'| cut -d ' ' -f1 "

w="/home/kjlmfe/Dropbox/www"

#开启bash兼容vi模式
set -o vi


