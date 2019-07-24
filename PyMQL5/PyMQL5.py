from .ConnectionMQL5 import ConnectionMQL5
from .Tools import MQL5Period
from datetime import datetime 

class PyMQL5:
    def __init__(self):
        self.pymql5 = ConnectionMQL5()
        self.pymql5.startConnection()
        
    def CheckConnection(self):
        return self.pymql5.Status    

    def iOpen(self, Symbol, Period, Shift):
        result = self.pymql5.MQL5("iopen,"+ str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Shift))
        if result == None: return result
        return float(result)

    def iHigh(self, Symbol, Period, Shift):
        result = self.pymql5.MQL5("ihigh,"+ str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Shift))
        if result == None: return result
        return float(result)

    def iLow(self, Symbol, Period, Shift):
        result = self.pymql5.MQL5("ilow,"+ str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Shift))
        if result == None: return result
        return float(result)
    
    def iClose(self, Symbol, Period, Shift):
        result = self.pymql5.MQL5("iclose,"+ str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Shift))
        if result == None: return result
        return float(result)

    def iTime(self, Symbol, Period, Shift):
        result = self.pymql5.MQL5("itime,"+ str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Shift))
        if result == None: return result
        return datetime.strptime(result, "%Y.%m.%d %H:%M")

    def iVolume(self, Symbol, Period, Shift):
        result = self.pymql5.MQL5("ivolume,"+ str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Shift))    
        if result == None: return result
        return int(result)

    # Copys 
    def CopyRates(self, Symbol, Period, Start_Pos, Count):
        result = self.pymql5.MQL5("copyrates," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))
        if result == None: return result
        return [dictMQLRates(i) for i in result]

    def CopyRatesTC(self, Symbol, Period, Start_Time, Count):
        result = self.pymql5.MQL5("copyratesTC," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))
        if result == None: return result
        return [dictMQLRates(i) for i in result]

    def CopyRatesTT(self, Symbol, Period, Start_Time, Stop_Time):
        result = self.pymql5.MQL5("copyratesTT," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))
        if result == None: return result
        return [dictMQLRates(i) for i in result]

     #open
    def CopyOpen(self, Symbol, Period, Start_Pos, Count):
        result = self.pymql5.MQL5("copyopen," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))[0]
        if result == None: return result
        return [float(i) for i in result]        
    
    def CopyOpenTC(self, Symbol, Period, Start_Time, Count):
        result = self.pymql5.MQL5("copyopenTC," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))[0]
        if result == None: return result
        return [float(i) for i in result]        

    def CopyOpenTT(self, Symbol, Period, Start_Time, Stop_Time):
        result = self.pymql5.MQL5("copyopenTT," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))[0]
        if result == None: return result
        return [float(i) for i in result]

    #high
    def CopyHigh(self, Symbol, Period, Start_Pos, Count):
        result = self.pymql5.MQL5("copyhigh," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))[0]
        if result == None: return result
        return [float(i) for i in result]
    
    def CopyHighTC(self, Symbol, Period, Start_Time, Count):
        result =  self.pymql5.MQL5("copyhighTC," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))[0]        
        if result == None: return result
        return [float(i) for i in result]

    def CopyHighTT(self, Symbol, Period, Start_Time, Stop_Time):
        result =  self.pymql5.MQL5("copyhighTT," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))[0]
        if result == None: return result
        return [float(i) for i in result]

    #low
    def CopyLow(self, Symbol, Period, Start_Pos, Count):
        result = self.pymql5.MQL5("copylow," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))[0]        
        if result == None: return result
        return [float(i) for i in result]
    
    def CopyLowTC(self, Symbol, Period, Start_Time, Count):
        result = self.pymql5.MQL5("copylowTC," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))[0]        
        if result == None: return result
        return [float(i) for i in result]

    def CopyLowTT(self, Symbol, Period, Start_Time, Stop_Time):
        result = self.pymql5.MQL5("copylowTT," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))[0]
        if result == None: return result
        return [float(i) for i in result]

    #close
    def CopyClose(self, Symbol, Period, Start_Pos, Count):
        result = self.pymql5.MQL5("copyclose," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))[0]        
        if result == None: return result
        return [float(i) for i in result]
    
    def CopyCloseTC(self, Symbol, Period, Start_Time, Count):
        result = self.pymql5.MQL5("copycloseTC," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))[0]        
        if result == None: return result
        return [float(i) for i in result]

    def CopyCloseTT(self, Symbol, Period, Start_Time, Stop_Time):
        result = self.pymql5.MQL5("copycloseTT," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))[0]
        if result == None: return result
        return [float(i) for i in result]

    #volume
    def CopyVolume(self, Symbol, Period, Start_Pos, Count):
        result = self.pymql5.MQL5("copyvolume," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Pos) + "," + str(Count))[0]        
        if result == None: return result
        return [int(i) for i in result]
    
    def CopyVolumeTC(self, Symbol, Period, Start_Time, Count):
        result = self.pymql5.MQL5("copyvolumeTC," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Count))[0]        
        if result == None: return result
        return [int(i) for i in result]

    def CopyVolumeTT(self, Symbol, Period, Start_Time, Stop_Time):
        result = self.pymql5.MQL5("copyvolumeTT," + str(Symbol).upper() + "," + MQL5Period(Period) + "," + str(Start_Time) + "," + str(Stop_Time))[0]
        if result == None: return result
        return [int(i) for i in result]

    #copyticks
    def CopyTicks(self, Symbol, Start_Time_MSC, Count):
        result = self.pymql5.MQL5("copyticks," + str(Symbol).upper() + "," + str(Start_Time_MSC) + "," + str(Count))
        if result == None: return result
        return [dictMQLTick(i) for i in result]        

    def CopyTicksRange(self, Symbol, Start_Time_MSC, Stop_Time_MSC):
        result = self.pymql5.MQL5("copyticksrange," + str(Symbol).upper() + "," + str(Start_Time_MSC) + "," + str(Stop_Time_MSC))
        if result == None: return result
        return [dictMQLTick(i) for i in result]

    # Orders
    def Buy(self, Symbol, Volume, Price, SL, TP, Comment):
        result = self.pymql5.MQL5("buy," + str(Symbol).upper() + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))
        if result == None: return result
        return int(result)
    
    def Sell(self, Symbol, Volume, Price, SL, TP, Comment):
        result = self.pymql5.MQL5("sell," + str(Symbol).upper() + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))
        if result == None: return result
        return int(result)
    
    def BuyLimit(self, Symbol, Volume, Price, SL, TP, Comment):
        result = self.pymql5.MQL5("buylimit," + str(Symbol).upper() + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))
        if result == None: return result
        return int(result)

    def SellLimit(self, Symbol, Volume, Price, SL, TP, Comment):
        result = self.pymql5.MQL5("selllimit," + str(Symbol).upper() + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))
        if result == None: return result
        return int(result)

    def BuyStop(self, Symbol, Volume, Price, SL, TP, Comment):
        result = self.pymql5.MQL5("buystop," + str(Symbol).upper() + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))
        if result == None: return result
        return int(result)

    def SellStop(self, Symbol, Volume, Price, SL, TP, Comment):
        result = self.pymql5.MQL5("sellstop," + str(Symbol).upper() + "," + str(Volume) + "," + str(Price) + "," + str(SL) + "," + str(TP) + "," + str(Comment))    
        if result == None: return result
        return int(result)

    # Positons
    def PositionsTotal(self):
        result = self.pymql5.MQL5("positionstotal")
        if result == None: return result
        return int(result)

    def PositionAll(self):
        result = self.pymql5.MQL5("positionall")
        if result == None: return result
        return [dictPOSITION(i) for i in result]

    # Orders
    def OrdersTotal(self):
        result = self.pymql5.MQL5("orderstotal")    
        if result == None: return result
        return int(result)

    def OrderAll(self):
        result = self.pymql5.MQL5("orderall")
        return [dictORDER(i) for i in result]

    # AccountInfo
    def AccountInfoAll(self):
        result = self.pymql5.MQL5("accountinfoall")
        if result == None: return result
        return [dictACCOUNT(i) for i in result]

    # HistoryDeal
    def HistoryDealTotalDay(self):
        result = self.pymql5.MQL5("historydealtotalday")
        if result == None: return result
        return int(result)

    def HistoryDealTotal(self, Start_Time, Stop_Time):
        result = self.pymql5.MQL5("historydealtotal," + str(Start_Time) + "," + str(Stop_Time))
        if result == None: return result
        return int(result)

    def HistoryDealAllDay(self):
        result = self.pymql5.MQL5("historydealallday")
        if result == None: return result
        return [dictDEAL(i) for i in result]

    def HistoryDealAll(self, Start_Time, Stop_Time):      
        result = self.pymql5.MQL5("historydealall," + str(Start_Time) + "," + str(Stop_Time))
        if result == None: return result
        return [dictDEAL(i) for i in result]       

    def CancelAllOrder(self):
        result = self.pymql5.MQL5("cancelallorder")
        if result == None: return result
        return int(result)

    def OrderDelete(self, Ticket):
        result = self.pymql5.MQL5("orderdelete," + str(Ticket))
        if result == None: return result
        return int(result)

    def PositionCloseSymbol(self, Symbol):
        result = self.pymql5.MQL5("positionclosesymbol," + str(Symbol).upper())
        if result == None: return result
        return int(result)

    def PositionCloseTicket(self, Ticket):
        result = self.pymql5.MQL5("positioncloseticket," + str(Ticket))
        if result == None: return result
        return int(result)

    def PositionClosePartial(self, Ticket, Volume):
        result = self.pymql5.MQL5("positionclosepartial," + str(Ticket) + "," + str(Volume))
        if result == None: return result
        return int(result)

    def PositionModifySymbol(self, Symbol, SL, TP):
        result = self.pymql5.MQL5("positionmodifysymbol," + str(Symbol).upper() + "," + str(SL) + "," + str(TP))
        if result == None: return result
        return int(result)

    def PositionModifyTicket(self, Ticket, SL, TP):
        result = self.pymql5.MQL5("positionmodifyticket," + str(Ticket) + "," + str(SL) + "," + str(TP))
        if result == None: return result
        return int(result)

    def CancelAllPosition(self):
        result = self.pymql5.MQL5("cancelallposition")
        if result == None: return result
        return int(result)

    def SetEAMagicNumber(self, Number):
        result = self.pymql5.MQL5("seteamagicnumber," + str(Number))
        if result == None: return result
        return int(result)

    def SymbolInfoAll(self, Symbol):
        result = self.pymql5.MQL5("symbolinfoall," + str(Symbol).upper())[0]
        if result == None: return result
        return result

    def OptionInfo(self, Symbol):
        result = self.pymql5.MQL5("optioninfo," + str(Symbol).upper())[0]    
        if result != None:
            return { 'OPTION_MODE': result[0],
                'OPTION_RIGHT': result[1],
                'START_TIME': datetime.strptime(result[2], "%Y.%m.%d %H:%M:%S"),
                'EXPIRATION_TIME': datetime.strptime(result[3], "%Y.%m.%d %H:%M:%S"),
                'OPTION_STRIKE': float(result[4]),
                'BID': float(result[5]),
                'ASK': float(result[6]),
                'LAST': float(result[7]),
                'VOLUME_REAL': float(result[8])
            }
        return result

def dictPOSITION(i):
    return { 'TICKET': int(i[0]),
    'TIME': datetime.strptime(i[1], "%Y.%m.%d %H:%M:%S"),
    'TIME_MSC': int(i[2]),
    'TIME_UPDATE': int(i[3]),
    'TIME_UPDATE_MSC': int(i[4]),
    'TYPE': i[5],
    'MAGIC': int(i[6]),
    'IDENTIFIER': int(i[7]),
    'REASON': i[8],
    'VOLUME': float(i[9]),
    'PRICE_OPEN': float(i[10]),
    'SL': float(i[11]),
    'TP': float(i[12]),
    'PRICE_CURRENT': float(i[13]),
    'PROFIT': float(i[14]),
    'SYMBOL': i[15],
    'COMMENT': i[16],
    'EXTERNAL_ID': i[17]}

def dictORDER(i):
    return {'TICKET': int(i[0]),
    'TIME_SETUP': i[1],
    'TYPE': i[2],
    'STATE': i[3],
    'TIME_EXPIRATION': i[4],
    'TIME_DONE': i[5],
    'TIME_SETUP_MSC': int(i[6]),
    'TIME_DONE_MSC': int(i[7]),
    'TYPE_FILLING': i[8],
    'TYPE_TIME': i[9],
    'MAGIC': int(i[10]),
    'POSITION_ID': int(i[11]),
    'POSITION_BY_ID': int(i[12]),
    'VOLUME_INITIAL': float(i[13]),
    'VOLUME_CURRENT': float(i[14]),
    'PRICE_OPEN': float(i[15]),
    'SL': float(i[16]),
    'TP': float(i[17]), 
    'PRICE_CURRENT': float(i[18]),
    'PRICE_STOPLIMIT': float(i[19]),
    'SYMBOL': i[20],
    'COMMENT': i[21]}


def dictDEAL(i):
    return { 'TICKET': int(i[0]),
    'ORDER': int(i[1]),
    'TIME': datetime.strptime(i[2], "%Y.%m.%d %H:%M:%S"),
    'TIME_MSC': int(i[3]),
    'TYPE': i[4],
    'ENTRY': i[5],
    'MAGIC': int(i[6]),
    'REASON': i[7],
    'POSITION_ID': int(i[8]),
    'VOLUME': float(i[9]),
    'PRICE': float(i[10]),
    'COMMISSION': float(i[11]),
    'SWAP': float(i[12]),
    'PROFIT': float(i[13]),
    'SYMBOL': i[14],
    'COMMENT': i[15]}


def dictACCOUNT(i):
    return { 'LOGIN': int(i[0]),
    'TRADE_MODE': i[1],
    'LEVERAGE': i[2],
    'LIMIT_ORDERS': int(i[3]),
    'MARGIN_SO_MODE': i[4],
    'TRADE_ALLOWED': i[5],
    'TRADE_EXPERT': i[6],
    'MARGIN_MODE': i[7],
    'CURRENCY_DIGITS': i[8],
    'BALANCE': float(i[9]),
    'CREDIT': float(i[10]),
    'PROFIT': float(i[11]),
    'EQUITY': float(i[12]),
    'MARGIN': float(i[13]),
    'MARGIN_FREE': float(i[14]),
    'MARGIN_LEVEL': float(i[15]),
    'MARGIN_SO_CALL': float(i[16]),
    'MARGIN_INITIAL': float(i[17]),
    'MARGIN_MAINTENANCE': float(i[18]),
    'ASSETS': float(i[19]),
    'LIABILITIES': float(i[20]),
    'COMMISSION_BLOCKED': float(i[21]),
    'NAME': i[22],
    'SERVER': i[23],
    'CURRENCY': i[24],
    'COMPANY': i[25] }

def dictMQLRates(i):
    return { 'TIME': datetime.strptime(i[0], "%Y.%m.%d %H:%M:%S"),
    'OPEN': float(i[1]),
    'HIGH': float(i[2]),
    'LOW': float(i[3]),
    'CLOSE': float(i[4]),
    'TICK_VOLUME': int(i[5]),
    'SPREAD': int(i[6]),
    'REAL_VOLUME': int(i[7]) }

def dictMQLTick(i):
    return { 'TIME': datetime.strptime(i[0], "%Y.%m.%d %H:%M:%S"),
    'BID': float(i[1]),
    'ASK': float(i[2]),
    'LAST': float(i[3]),
    'VOLUME': float(i[4]),
    'TIME_MSC': int(i[5]),
    'FLAGS': int(i[6]),
    'VOLUME_REAL': float(i[7]) }