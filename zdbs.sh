#���������ж�ʱ��ζ����㱨ʱ
#��Ҫ��װ madplay(���ڲ���MP3) mpc(���ڿ��Ʋ�������)
#chmod 777 /long1983/zdbs/zdbs.sh
#��ӵ��ƻ�����ÿСʱ��0�ֲ���MP3 0 * * * * /long1983/zdbs/zdbs.sh
#!/bin/bash
value=$(date +%T |awk -F: '{print $1}')
#ʱ�����ִ��
if [ $value -ge 09 ] && [ $value -le 22 ]
then
#echo "������:$(date +%T)"
filePath=/long1983/zdbs #��ű�ʱ���ֵ��ļ���
Time=`date | awk -F ' ' {'print $4'} | awk -F : {'print $1'}`
audioFile="$filePath/$Time.mp3"
echo $audioFile
player=/usr/bin/madplay
mpc volume 5 && $player $audioFile
fi
#----------------------------
#����������޸ĵ� ԭ�����ӣ�https://blog.csdn.net/ibosea/article/details/88753891
#!/bin/bash
##value=$(date +%T |awk -F: '{print $1}')
#����
##if [ $value -ge 19 ] && [ $value -le 23 ]
##then
##echo "����������:$(date +%T)"
#�賿
##elif [ $value -ge 00 ] && [ $value -le 05 ]
##then
##echo "�������賿:$(date +%T)"
#����
##elif [ $value -ge 05 ] && [ $value  -le 08 ]
##then
##echo "����������:$(date +%T)"
#����
##elif [ $value -ge 08 ] && [ $value -le 10 ]
##then
##echo "����������:$(date +%T)"
#����
##elif [ $value -ge 11 ] && [ $value -le 12 ]
##then
##echo "����������:$(date +%T)"
#����
##elif [ $value -ge 13 ] && [ $value -le 16 ]
##then
##echo "����������:$(date +%T)"
##else [ $value -ge 17 ] && [ $value -le 19 ]
##echo "�����ǰ���$(date +%T)"
##fi
#----------------------------