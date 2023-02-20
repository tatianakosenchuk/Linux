#Написать скрипт очистки директорий. На вход принимает путь к директории. 
#Если директория существует, то удаляет в ней все файлы с расширениями .bak, .tmp, .backup. Если директории нет, то выводит ошибку.

dirpath=$(realpath $1)

find "$dirpath" -name "*.bak" -delete
find "$dirpath" -name "*.tmp" -delete
find "$dirpath" -name "*.backup" -delete

if [ ! -d "$dirpath" ]; then
    echo "Path does not exist: $dirpath"
    exit 1
fi

