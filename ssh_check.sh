#!/bin/bash

HOST=$1

if [ -z "$HOST" ]; then
  echo "Использование: ./ssh_check.sh user@ip"
  exit 1
fi

echo "Пробую подключиться к $HOST ..."

ssh -o BatchMode=yes -o ConnectTimeout=5 $HOST "echo '🟢 Успешное подключение по SSH!'" 2>/dev/null

if [ $? -ne 0 ]; then
  echo "🔴 Не удалось подключиться"
fi
