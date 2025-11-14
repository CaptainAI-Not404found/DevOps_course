#!/bin/bash

FILE="demo.txt"

echo "Создаю файл $FILE"
touch $FILE

echo "Права файла до изменений:"
ls -l $FILE

echo "Изменяю права ..."
chmod 600 $FILE

echo "Права файла после:"
ls -l $FILE

echo "Смена Владельца на $USER"
sudo chown $USER $FILE

echo "Готово."