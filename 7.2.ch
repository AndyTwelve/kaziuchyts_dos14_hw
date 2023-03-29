#!/bin/bash

echo -n "Введите фразу: "
read line

echo -n "Acronim: "
echo "$line" | tr "-" " " | tr '[:lower:]' '[:upper:]' | sed -e 's/$/ /' -e 's/\([^ ]\)[^ ]* /\1/g' -e 's/^ *//'
