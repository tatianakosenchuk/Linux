#Создать скрипт ownersort.sh, который в заданной папке копирует файлы в директории, названные по имени владельца каждого файла. 
#Учтите, что файл должен принадлежать соответствующему владельцу.

owners=$(ls -l | tr -s ' ' '\t' | cut -f '3' | sort -u)
for i in $owners; 
do
  mkdir -p $i
done

putfile=$(ls -l | tr -s ' ' '\t' | cut -f '3 9')
count=0
for j in $putfile; do
  count=$((count+1))
  if (($count%2))
    then
        owners=$i
        echo $owners = $i zero
    else
        if [ -f ./$i ]
          then
                cp ./$i ./$dir/$i
        fi
  fi
done