import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

data=np.loadtxt("tiempo.txt")
a=np.array([1,10,20,50,100])

n=[]
ind=0

for i in range(np.shape(a)[0]):
    if (i==0):
        ind+=a[i]
        n.append(data[0])
    else:
        ind+=a[i]
        n.append(np.sum(data[ind-a[i]:ind-1]))

plt.figure(figsize=(18,9))
plt.scatter(np.arange(5), n)
plt.xlabel('Numero de divisiones del archivo')
plt.ylabel('tiempo')
plt.savefig("grafica.pdf")
