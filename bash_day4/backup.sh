#!/bin/bash
# Простая резервная копия
SOURCE=~/DevOps_course
DEST=~/DevOps_course_backup_$(date +%Y%m%d_%H%M%S)

cp -r $SOURCE $DEST
echo "Бекап успешно создан в; $DEST"
