for palavra in $(cat $1)
do

curl -s -o /dev/null  -H "User-Agent: Cavalo"  -w "%{http_code}" $2/$palavra

echo "Encontrado $2/$palavra" 

done
