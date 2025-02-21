class Sphere:
    def __init__(self,radius):
        self.r = radius
    def calcVol(self):
        volume = (4*(self.r**3)*3.14159)/3
        return volume
    def calcArea(self):
        area = (self.r*self.r*4*3.14159)
        return area