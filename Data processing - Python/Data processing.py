import matplotlib.pyplot as plt
import numpy as np
from sklearn.metrics import r2_score
from scipy.stats import gaussian_kde

#Hardware values to get back to the resistance value
Vcc = 5.0;
R5 = 10.0*(10.0**3);
R1 = 100.0*(10.0**3);
R2 = 1.0*(10.0**3);
R3 = 100.0*(10.0**3);


#Vectoring a text file
with open('HB 20-150.txt') as f:
    lines = f.readlines()
    x = [-float(line.split()[0])+78 for line in lines]
    v = [float(line.split()[1])/1024.0*5.0 for line in lines]
    y = v

#Getting rid of absurde values and converting tension into resistance
for n in range(len(lines)):
    y[n] = abs(((R1/R2)*((R2+R3)*Vcc)/(v[n]+0.000001))-R1-R5)/1000.0/1000.0
    if y[n] < 0 or y[n] > 3000:
        y[n] = y[n-1]

#Fitting a line    
coef = np.polyfit(x,y,1)
line = np.poly1d(coef)
print('y =',coef[0],'x +',coef[1])
print('R^2 =', r2_score(y, line(x)))

#Making points bigger and of different colors according to density of values at this point
xy = np.vstack([x,y])
z = gaussian_kde(xy)(xy)
fig, ax = plt.subplots()
ax.scatter(x, y, c=z, s=z*6000)

#Plot settings
legend='y = '+str(format(coef[0],"5.2e"))+' x + '+str(format(coef[1],"5.2e"))
ax.plot(x, line(x), '-k', label=legend)
plt.legend()
plt.title("Resistance according to angle of flexion for 2B graphite")
plt.xlabel('Angle')
plt.ylabel('Resistance (Mohm)')
plt.grid(alpha=.4,linestyle='--')
plt.show()

f.close()
