#!/bin/bash

echo -n "Введите фразу: "
read line

echo "$line" | tr "-" " " | tr '[:lower:]' '[:upper:]' | sed -e 's/$/ /' -e 's/\([^ ]\)[^ ]* /\1/g' -e 's/^ *//'
