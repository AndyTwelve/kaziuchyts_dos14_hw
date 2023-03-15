#!/bin/bash
proc_num=$(top -bn1 -u andy12 | grep andy12 -w | grep -e top -e grep -vwc)
la15=$(top -bn1 | awk '/average/ {print $12}')
mem_free=$(free -h  | awk '{print $1,$4}' | grep Mem | awk '{print $2}')
space_free=$(df / -h | awk '/root/ {print $4}')
date +"%Y-%m-%d %T"
echo "Кол-во запущенных процессов текущего пользователя: $proc_num"
echo "Средняя нагрузка за 15 минут: $la15"
echo "Свободная память: $mem_free"
echo "Свободное место в разделе '/': $space_free"
echo "-------------- Конец вывода ------------------"
