from scipy import constants
import numpy as np
class model:
    def __init__(self,Temp,R2,R3,R4,N,Vbe):
        self.Vt = constants.k * Temp / constants.e
        self.R2 = R2
        self.R3 = R3
        self.R4 = R4
        self.N = N
        self.Vbe = abs(Vbe)
        self.out = self.compute()

    def compute(self):
        return self.R4 * (self.Vbe/self.R2 + self.Vt*np.log(self.N)/self.R3)