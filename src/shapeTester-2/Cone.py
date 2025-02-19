import math
class Cone:
    def __init__(self,r,h):
        self.r = r
        self.h = h
    def calcVol(self):
        volume = self.r**2 * self.h/3 *3.14159
        return volume
    def calcArea(self):
        area = 3.14159 * self.r * (self.r + math.sqrt(self.h**2 + self.r**2))
        return area