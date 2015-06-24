#!/bin/sh

function print_counts {
  log=$1
  grep "java.lang.Thread.State" $log \
    | ./thread_type_counter.awk
}

dir="./temp/app$1.threads"
counter=1
for log in `ls $dir`; do
  echo "$counter $(print_counts $dir/$log)"
  counter=$((counter+1))
done
