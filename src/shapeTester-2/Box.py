class Box:
    def __init__(self,w,l,h):
        self.w = w
        self.h = h
        self.l = l
    def calcVol(self):
        volume = self.w*self.h*self.l
        return volume
    def calcArea(self):
        area = self.w*self.l*2+self.w*self.h*2+self.h*self.l*2
        return area