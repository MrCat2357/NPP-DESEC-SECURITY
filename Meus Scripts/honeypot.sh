while true; 
do nc -vnlp 21 < banner_21.txt 1>>21.log 2>>21.log; 
echo $(date) >> 21.log;
done
