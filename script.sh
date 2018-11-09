#!/bin/bash

#wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesDatos/master/homework/2014-20/hw_1/Pi_2500000.txt

g++ cuenta.cpp -o cuenta.x

rm cuenta.txt tiempo.txt tiempo1.txt

./cuenta.x Pi_2500000.txt cuenta.txt tiempo.txt


for i in 1 10 20 50 100;do
split -n $i -d --additional-suffix=.txt  Pi_2500000.txt parte
start=($(date +%s%N)/1000000)
for archivo in parte*; do 
./cuenta.x $archivo cuenta.txt tiempo.txt
done
end=($(date +%s%N)/1000000)
runtime=$((end-start))
echo $runtime >> tiempo1.txt
rm parte*
done


python3 sample.py




