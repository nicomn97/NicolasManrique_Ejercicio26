import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

data=np.loadtxt("tRun.txt")
a=np.array([1,10,20,50,100])

media=[]
desv=[]
ind=0

for i in range(np.shape(a)[0]):
    if (i==0):
        ind+=a[i]
        media.append(data[0])
    else:
        ind+=a[i]
        media.append(np.mean(data[ind-a[i]:ind-1]))
        desv.append(np.std(data[ind-a[i]:ind-1]))

plt.figure(figsize=(18,9))
plt.plot(a, media,c='b')
plt.errorbar(a[1:], media[1:], desv,c='b')
plt.yscale('log')
plt.xlabel('Numero de divisiones del archivo')
plt.ylabel('log10 (tiempo por parte de archivo) (ms)')
plt.savefig("grafica.pdf")
