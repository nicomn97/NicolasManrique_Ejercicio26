import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

data=np.loadtxt("tiempo.txt")
a=np.array([1,10,20,50,100])

n=[]
ind=0

for i in range(np.shape(a)[0]):
    ind+=a[i]
    n.append(np.sum(data[ind-a[i]:ind-1]))

print(n)
