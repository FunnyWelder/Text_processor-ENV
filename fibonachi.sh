#!/bin/bash
echo "Введите N:"
read N
a=$2
b=$1
c=$3
empty=$(file fib.txt)
if [[ $empty == 'fib.txt: empty' ]] || [[ $c == '-C' ]]; then
  cat /dev/null > fib.txt
fi
for (( i=1; i<=N; i=i+1 ));
  do
    a=$(($a + $b))
    echo $i: "$a " >> fib.txt
    b=$(($a - $b))
  done
echo '..............' >> fib.txt
if [[ $c == '-S' ]]; then
  printf '\n'
  echo "размер файла fib.txt $(find "fib.txt" -printf "%s")"
  echo "число строк $(<fib.txt wc -l)"
  cat fib.txt
fi
