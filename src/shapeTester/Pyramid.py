import math
class Pyramid:
    def __init__(self, height, width, legnth):
        self.h = height
        self.w = width
        self.l = legnth
    def calcVol(self):
        volume = (self.l*self.w*self.h)/3
        return volume
    def calcArea(self):
        area = self.l*self.w + self.l*math.sqrt((self.w/2)**2 + self.h**2) + self.w*math.sqrt((self.l/2)**2+self.h**2)
        return area