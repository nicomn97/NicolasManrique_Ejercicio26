#!/bin/bash

#wget https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesDatos/master/homework/2014-20/hw_1/Pi_2500000.txt

g++ cuenta.cpp -o cuenta.x

rm cuenta.txt tiempo.txt

./cuenta.x Pi_2500000.txt cuenta.txt tiempo.txt

split -n 10 -d --additional-suffix=.txt  Pi_2500000.txt parte
for archivo in parte*; do 
./cuenta.x $archivo cuenta.txt tiempo.txt
done
rm parte*

split -n 20 -d --additional-suffix=.txt  Pi_2500000.txt parte
for archivo in parte*; do 
./cuenta.x $archivo cuenta.txt tiempo.txt
done
rm parte*

split -n 50 -d --additional-suffix=.txt  Pi_2500000.txt parte
for archivo in parte*; do 
./cuenta.x $archivo cuenta.txt tiempo.txt
done
rm parte*

split -n 100 -d --additional-suffix=.txt  Pi_2500000.txt parte
for archivo in parte*; do 
./cuenta.x $archivo cuenta.txt tiempo.txt
done
rm parte*

