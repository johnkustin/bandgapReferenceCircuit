import csv
import matplotlib.pyplot as plt
import numpy as np

data = []
with open('data.csv', newline='') as csvfile:
    reader = csv.reader(csvfile, delimiter=' ', quotechar='|')
    for row in reader:
        data.append(row)

# discard labels
loads_0nA_to_300nA = data[1:]
loads = np.asarray([0, 100, 200, 300]).astype('float') # in nA
temp = []
voltages_over_loads = []
for row in loads_0nA_to_300nA:
    temp.append(row[0].split(',')[0])
    voltages_over_loads.append(np.asarray(row[0].split(',')[1:]).astype('float'))
temp = np.asarray([float(t) for t in temp])
T, L = np.meshgrid(temp, loads)
v_o_l = np.asarray(voltages_over_loads) * 1e3
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
surf = ax.plot_surface(T, L, v_o_l)
ax.set_xlabel('Temperature (C)')
ax.set_ylabel('Load (nA)')
ax.set_zlabel('Voltage (mV)')
plt.show()

load_indx = 3
tcoeff_0nA = (v_o_l[:,load_indx].max()-v_o_l[:,load_indx].min())/(v_o_l[1,load_indx]*(temp.max()-temp.min()))*1e6
print(tcoeff_0nA)
print(v_o_l[1,load_indx])
