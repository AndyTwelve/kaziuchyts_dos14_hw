#!/bin/bash
array1=(1 7 5 3)
array2=(2 9 7 0)
echo ${array1[@]} ${array2[@]} | tr ' ' '\n' | sort | uniq -d
