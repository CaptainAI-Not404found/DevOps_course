#!/bin/bash

echo "Введите имя процесса:"
read PROC

PID=$(pgrep $PROC)
if [ -z "$PID" ]; then
    echo "Процесс $PROC не найден."
    exit 1
fi

echo "Процесс $PROC найден с PID: $PID"
echo
echo "Информация о процессе:"
ps -p $PID -o pid,ppid,%mem,ettime,cmd