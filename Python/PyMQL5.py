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

     #open
    def CopyOpen(self, Symbol, Period, Start_Pos, Count):
        return self.pymql5.MQL5("copyopen," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))        
    
    def CopyOpenTC(self, Symbol, Period, Start_Time, Count):
        return self.pymql5.MQL5("copyopenTC," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))        

    def CopyOpenTT(self, Symbol, Period, Start_Time, Stop_Time):
        return self.pymql5.MQL5("copyopenTT," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))

    #high
    def CopyHigh(self, Symbol, Period, Start_Pos, Count):
        return self.pymql5.MQL5("copyhigh," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))        
    
    def CopyHighTC(self, Symbol, Period, Start_Time, Count):
        return self.pymql5.MQL5("copyhighTC," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))        

    def CopyHighTT(self, Symbol, Period, Start_Time, Stop_Time):
        return self.pymql5.MQL5("copyhighTT," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))

    #low
    def CopyLow(self, Symbol, Period, Start_Pos, Count):
        return self.pymql5.MQL5("copylow," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))        
    
    def CopyLowTC(self, Symbol, Period, Start_Time, Count):
        return self.pymql5.MQL5("copylowTC," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))        

    def CopyLowTT(self, Symbol, Period, Start_Time, Stop_Time):
        return self.pymql5.MQL5("copylowTT," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))

    #close
    def CopyClose(self, Symbol, Period, Start_Pos, Count):
        return self.pymql5.MQL5("copyclose," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))        
    
    def CopyCloseTC(self, Symbol, Period, Start_Time, Count):
        return self.pymql5.MQL5("copycloseTC," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))        

    def CopyCloseTT(self, Symbol, Period, Start_Time, Stop_Time):
        return self.pymql5.MQL5("copycloseTT," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))

    #volume
    def CopyVolume(self, Symbol, Period, Start_Pos, Count):
        return self.pymql5.MQL5("copyvolume," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))        
    
    def CopyVolumeTC(self, Symbol, Period, Start_Time, Count):
        return self.pymql5.MQL5("copyvolumeTC," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))        

    def CopyVolumeTT(self, Symbol, Period, Start_Time, Stop_Time):
        return self.pymql5.MQL5("copyvolumeTT," + str(Symbol) + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))

    #copyticks
    def CopyTicks(self, Symbol, Start_Time, Count):
        return self.pymql5.MQL5("copyticks," + str(Symbol) + "," + str(Start_Time) + "," + str(Count))        

    def CopyTicksRange(self, Symbol, Start_Time, Stop_Time):
        return self.pymql5.MQL5("copyticksrange," + str(Symbol) + "," + str(Start_Time) + "," + str(Stop_Time))

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

    # Positons
    def PositionsTotal(self):
        return self.pymql5.MQL5("positionstotal")

    def PositionAll(self):
        return self.pymql5.MQL5("positionall")

    # Orders
    def OrdersTotal(self):
        return self.pymql5.MQL5("orderstotal")    

    def OrderAll(self):
        return self.pymql5.MQL5("orderall")    

    # AccountInfo
    def AccountInfoAll(self):
        return self.pymql5.MQL5("accountinfoall")

    # HistoryDeal
    def HistoryDealTotalDay(self):
        return self.pymql5.MQL5("historydealtotalday") 

    def HistoryDealTotal(self, Start_Time, Stop_Time):
        return self.pymql5.MQL5("historydealtotal," + str(Start_Pos) + "," + str(Stop_Time))       

    def HistoryDealAllDay(self):
        return self.pymql5.MQL5("historydealallday")

    def HistoryDealAll(self, Start_Time, Stop_Time):    
        return self.pymql5.MQL5("historydealall," + str(Start_Pos) + "," + str(Stop_Time))       