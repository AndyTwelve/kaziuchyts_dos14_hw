#!/bin/bash
mystring=$1

echo "$(tr -d ' ' <<< "$mystring")"
