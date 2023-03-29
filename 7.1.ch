#!/bin/bash
operation=$1
number1=$2
number2=$3

if [ -n $operation ]; then
	case $operation in
		add) echo "Результат сложения: $(bc<<<"scale=4;$number1+$number2")" ;;
		sub) echo "Результат вычитания: $(bc<<<"scale=4;$number1-$number2")" ;;
		div) echo "Результат деления: $(bc<<<"scale=4;$number1/$number2")" ;;
		multi) echo "Результат умножения: $(bc<<<"scale=4;$number1*$number2")" ;;
		*) echo "Ошибка! Неверное действие. Вам необходимо сначала выбрать действие add, sub, div, multi, а затем ввести последовательно 2 числа через пробел. Пример использования: sub 6 4"
	esac
else 
	echo "Ошибка! Не выбрано действие. Пример использования: sub 6 4"
fi
