#!/bin/bash
# Проверка доступности сервера

echo "Введите адрес сайта:"
read host

echo "Проверяю доступность $host ..."
ping -c 3 $host > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "$host доступен"
else [ $? -eq 0 ];
    echo "$host недоступен"
fi
