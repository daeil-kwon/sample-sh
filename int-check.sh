#!/bin/sh

test "$1" -eq 0 2>/dev/null   #(1)

if [ $? -lt 2 ]; then   #(2)
  echo "Argument is Integer."
  expr 10 + $1
else
  echo "Argument is not Integer."
  exit 1
fi
