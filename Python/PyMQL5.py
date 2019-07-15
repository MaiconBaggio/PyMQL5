from ConnectionMQL5 import ConnectionMQL5
from Tools import MQL5Period 

class PyMQL5:
    def __init__(self):
        self.pymql5 = ConnectionMQL5()
        self.pymql5.startConnection()

    def CheckConnection(self):
        return self.pymql5.Status    

    def iOpen(self, Symbol, Period, Shift):
        return self.pymql5.MQL5("iopen,"+ str(Symbol) + "," + MQL5Period(Period) + "," + str(Shift))

    def iHigh(self, Symbol, Period, Shift):
        return self.pymql5.MQL5("ihigh,"+ str(Symbol) + "," + MQL5Period(Period) + "," + str(Shift))

    def iLow(self, Symbol, Period, Shift):
        return self.pymql5.MQL5("ilow,"+ str(Symbol) + "," + MQL5Period(Period) + "," + str(Shift))

    def iClose(self, Symbol, Period, Shift):
        return self.pymql5.MQL5("iclose,"+ str(Symbol) + "," + MQL5Period(Period) + "," + str(Shift))

    def iTime(self, Symbol, Period, Shift):
        return self.pymql5.MQL5("itime,"+ str(Symbol) + "," + MQL5Period(Period) + "," + str(Shift))

    def iVolume(self, Symbol, Period, Shift):
        return self.pymql5.MQL5("ivolume,"+ str(Symbol) + "," + MQL5Period(Period) + "," + str(Shift))    


    # Copys 
    def CopyRates(self, Symbol, Period, Start_Pos, Count):
        return self.pymql5.MQL5("copyrates," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))        

    def CopyRatesTC(self, Symbol, Period, Start_Time, Count):
        return self.pymql5.MQL5("copyratesTC," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))        

    def CopyRatesTT(self, Symbol, Period, Start_Time, Stop_Time):
        return self.pymql5.MQL5("copyratesTT," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))

    
    # Orders
    def Buy(self, Symbol, Volume, Price, SL, TP, Comment):
        return self.pymql5.MQL5("buy," + str(Symbol) + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))
    
    def Sell(self, Symbol, Volume, Price, SL, TP, Comment):
        return self.pymql5.MQL5("sell," + str(Symbol) + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))
    
    def BuyLimit(self, Symbol, Volume, Price, SL, TP, Comment):
        return self.pymql5.MQL5("buylimit," + str(Symbol) + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))

    def SellLimit(self, Symbol, Volume, Price, SL, TP, Comment):
        return self.pymql5.MQL5("selllimit," + str(Symbol) + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))

    def BuyStop(self, Symbol, Volume, Price, SL, TP, Comment):
        return self.pymql5.MQL5("buystop," + str(Symbol) + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))

    def SellStop(self, Symbol, Volume, Price, SL, TP, Comment):
        return self.pymql5.MQL5("sellstop," + str(Symbol) + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))    