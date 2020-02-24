#添加了语句判断时间段而整点报时
#需要安装 madplay(用于播放MP3) mpc(用于控制播放音量)
#chmod 777 /long1983/zdbs/zdbs.sh
#添加到计划任务每小时的0分播放MP3 0 * * * * /long1983/zdbs/zdbs.sh
#!/bin/bash
value=$(date +%T |awk -F: '{print $1}')
#时间段内执行
if [ $value -ge 09 ] && [ $value -le 22 ]
then
#echo "现在是:$(date +%T)"
filePath=/long1983/zdbs #存放报时音乐的文件夹
Time=`date | awk -F ' ' {'print $4'} | awk -F : {'print $1'}`
audioFile="$filePath/$Time.mp3"
echo $audioFile
player=/usr/bin/madplay
mpc volume 5 && $player $audioFile
fi
#----------------------------
#用这个方法修改的 原文链接：https://blog.csdn.net/ibosea/article/details/88753891
#!/bin/bash
##value=$(date +%T |awk -F: '{print $1}')
#晚上
##if [ $value -ge 19 ] && [ $value -le 23 ]
##then
##echo "现在是晚上:$(date +%T)"
#凌晨
##elif [ $value -ge 00 ] && [ $value -le 05 ]
##then
##echo "现在是凌晨:$(date +%T)"
#早上
##elif [ $value -ge 05 ] && [ $value  -le 08 ]
##then
##echo "现在是早上:$(date +%T)"
#上午
##elif [ $value -ge 08 ] && [ $value -le 10 ]
##then
##echo "现在是上午:$(date +%T)"
#中午
##elif [ $value -ge 11 ] && [ $value -le 12 ]
##then
##echo "现在是中午:$(date +%T)"
#下午
##elif [ $value -ge 13 ] && [ $value -le 16 ]
##then
##echo "现在是下午:$(date +%T)"
##else [ $value -ge 17 ] && [ $value -le 19 ]
##echo "现在是傍晚$(date +%T)"
##fi
#----------------------------