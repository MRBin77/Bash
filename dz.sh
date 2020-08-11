#!/bin/bash

cd /home/vagrant

mkdir domashka  domashka/{1..4}  domashka/{1..4}/{1..5} 

touch domashka/{1..4}/{1..5}/file.txt

touch -mad "2020-07-15 12:15:10" domashka/{2,4}/{1..5}/file.txt 

tar cfz dz_slava.tar.gz domashka

echo "Файлы упакованы в архив dz_slava_tar.gz" 

ls /home/vagrant/ 

tar xfz dz_slava.tar.gz -C dz_slava_unpack/

echo "Файлы распакованы в каталог dz_slava_unpack"

exit 0     