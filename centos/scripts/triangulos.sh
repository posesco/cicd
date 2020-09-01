#!/bin/bash
m=$1
for ((i=0;i<$m;i++)) do
    for ((j=0;j<i;j++)) do
        echo -n "*"
        echo -n "."
    done
    echo "<"
done
for ((i=$m;i>0;i--)) do
    for ((j=1;j<i;j++)) do
        echo -n "*"
        echo -n "."
    done
    echo ">"
done


