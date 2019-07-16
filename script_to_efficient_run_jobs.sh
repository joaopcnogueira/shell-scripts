#!/bin/bash

for N in 1000 2000 5000; do 
  for i in $(seq 1 1 100) ; do 
    for q in $(seq 0.96 0.01 1.04); do
      c=$( ps aux | grep "./Random_Graph_Betweenness.py" | wc -l )
      while [ $c -ge 30 ] ; do
        c=$( ps aux | grep "./Random_Graph_Betweenness.py" | wc -l )
        sleep 2
      done
      ./Random_Graph_Betweenness.py $i $N $q &
    done
  done
done
