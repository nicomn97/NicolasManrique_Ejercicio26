#PBS -l nodes=1:ppn=1,mem=16gb,walltime=00:00:30
#PBS -M n.manrique10@uniandes.edu.co
#PBS -m abe
#PBS -N ejercicio26


module load anaconda/python3
module load gcc/4.9.4 

cd /hpcfs/home/fisi4028/n.manrique10/Ej26/NicolasManrique_Ejercicio26 
g++ cuenta.cpp -o cuenta.x

rm cuenta.txt tiempo.txt tiempo0* conteo0*
start=($(date +%s%N)/1000000)
./cuenta.x Pi_2500000.txt cuenta.txt tiempo.txt
end=($(date +%s%N)/1000000)
runtime=$((end-start))
echo $runtime >> tRun.txt


a=conteo
b=tiempo
c=.txt
for i in 10 20 50 100;do
split -n $i -d Pi_2500000.txt 0
start=($(date +%s%N)/1000000)
for archivo in 0*; do 
./cuenta.x $archivo $a$archivo$c $b$archivo$c &
done
end=($(date +%s%N)/1000000)
runtime=$((end-start))
echo $runtime >> tRun.txt
rm 0*
done

rm cuenta.txt tiempo.txt tiempo0* conteo0*
