import socket
from .Tools import MQL5Period, MQL5parse
from datetime import datetime 
import logging
from pathlib import Path

fileLog = Path.home() / "Documents" / "PyMQL5.log"

logging.basicConfig(filename= fileLog, format='%(asctime)s| %(message)s') 
logger = logging.getLogger()
logger.setLevel(logging.DEBUG)
logger.info("Start")

class PyMQL5:
    def __init__(self):
        try:
            self.client = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.HOST = "127.0.0.1"
            self.PORT = 1235
            logger.info("Socket UDP HOST=" + str(self.HOST) + " PORT=" + str(self.PORT))
        except:
            logger.exception("Erro ao se conectcar com o socket client UDP!")

    def MQL5(self, text):        
        try:
            self.client.sendto(text.encode(), (self.HOST, self.PORT))
            self.client.settimeout(1)
            recv, _ = self.client.recvfrom(1024000)
            return MQL5parse(recv.decode("utf-8"))
        except:
            logger.exception("Error de comunicação (def MQL5 " + str(text) + ")")
            return None


    def TimeSeriresI(self, _type, symbol, period, shift, formate):
        try:
            dado = self.MQL5(str(_type) + "," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(shift))
            if formate == "float":
                return float(dado)
            if formate == "date":
                return datetime.strptime(dado, "%Y.%m.%d %H:%M")
            return None
        except:
            logger.exception("Error " + str(_type) + " " + str(symbol).upper() + "," + MQL5Period(period)  + "," + str(shift))
            return None
    
    def TimeSeriresCopy(self, _type, symbol, period, start_Pos, count, start_time, stop_time, formate):
        try:
            if start_time == None and stop_time == None:
                result = self.MQL5(str(_type) + "," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_Pos) + "," + str(count))
            elif start_Pos == None and stop_time == None:
                result = self.MQL5(str(_type) + "," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(count))
            elif start_Pos == None and count == None:
                result = self.MQL5(str(_type) + "," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(stop_time))

            if formate == "dictMQLRates":
                return [dictMQLRates(i) for i in result]
            if formate == "float":
                result = result[0]
                return [float(i) for i in result]
            return None
        except:
            logger.exception("Error " + str(_type) + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_Pos) + "," + str(count) + "," + str(start_time) + "," + str(stop_time))
            return None

    def SendTrade(self, _type, symbol, volume, price, sl, tp, comment):
        try:
            logger.info("Trade " + str(_type) + "," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment))
            return int(self.MQL5(str(_type) + "," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment)))
        except:
            logger.exception("Erro Trade " + str(_type) + "," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment))
            return None
    
    def iOpen(self, symbol, period, shift):
        return self.TimeSeriresI("iopen", symbol, period, shift, "float")

    def iHigh(self, symbol, period, shift):
        return self.TimeSeriresI("ihigh", symbol, period, shift, "float")
        
    def iLow(self, symbol, period, shift):
        return self.TimeSeriresI("ilow", symbol, period, shift, "float")
 
    def iClose(self, symbol, period, shift):
        return self.TimeSeriresI("iclose", symbol, period, shift, "float")
        
    def iTime(self, symbol, period, shift):
        return self.TimeSeriresI("itime", symbol, period, shift, "date")
        
    def iVolume(self, symbol, period, shift):
        return self.TimeSeriresI("ivolume", symbol, period, shift, "float")
        
    def CopyRates(self, symbol, period, start_Pos, count):
        return self.TimeSeriresCopy("copyrates", symbol, period, start_Pos, count, None, None, "dictMQLRates")

    def CopyRatesTC(self, symbol, period, start_time, count):
        return self.TimeSeriresCopy("copyratesTC", symbol, period, None, count, start_time, None, "dictMQLRates")
        
    def CopyRatesTT(self, symbol, period, start_time, stop_time):
        return self.TimeSeriresCopy("copyratesTT", symbol, period, None, None, start_time, stop_time, "dictMQLRates")

    def CopyOpen(self, symbol, period, start_Pos, count):
        return self.TimeSeriresCopy("copyopen", symbol, period, start_Pos, count, None, None, "float")

    def CopyOpenTC(self, symbol, period, start_time, count):
        return self.TimeSeriresCopy("copyopenTC", symbol, period, None, count, start_time, None, "float")
        
    def CopyOpenTT(self, symbol, period, start_time, stop_time):
        return self.TimeSeriresCopy("copyopenTT", symbol, period, None, None, start_time, stop_time, "float")
        
    def CopyHigh(self, symbol, period, start_Pos, count):
        return self.TimeSeriresCopy("copyhigh", symbol, period, start_Pos, count, None, None, "float")
        
    def CopyHighTC(self, symbol, period, start_time, count):
        return self.TimeSeriresCopy("copyhighTC", symbol, period, None, count, start_time, None, "float")

    def CopyHighTT(self, symbol, period, start_time, stop_time):
        return self.TimeSeriresCopy("copyhighTT", symbol, period, None, None, start_time, stop_time, "float")

    def CopyLow(self, symbol, period, start_Pos, count):
        return self.TimeSeriresCopy("copylow", symbol, period, start_Pos, count, None, None, "float")
    
    def CopyLowTC(self, symbol, period, start_time, count):
        return self.TimeSeriresCopy("copylowTC", symbol, period, None, count, start_time, None, "float")

    def CopyLowTT(self, symbol, period, start_time, stop_time):
        return self.TimeSeriresCopy("copylowTT", symbol, period, None, None, start_time, stop_time, "float")

    def CopyClose(self, symbol, period, start_Pos, count):
        return self.TimeSeriresCopy("copyclose", symbol, period, start_Pos, count, None, None, "float")
    
    def CopyCloseTC(self, symbol, period, start_time, count):
        return self.TimeSeriresCopy("copycloseTC", symbol, period, None, count, start_time, None, "float")
    
    def CopyCloseTT(self, symbol, period, start_time, stop_time):
        return self.TimeSeriresCopy("copycloseTT", symbol, period, None, None, start_time, stop_time, "float")

    def CopyVolume(self, symbol, period, start_Pos, count):
        return self.TimeSeriresCopy("copyvolume", symbol, period, start_Pos, count, None, None, "float")
    
    def CopyVolumeTC(self, symbol, period, start_time, count):
        return self.TimeSeriresCopy("copyvolumeTC", symbol, period, None, count, start_time, None, "float")
    
    def CopyVolumeTT(self, symbol, period, start_time, stop_time):
        return self.TimeSeriresCopy("copyvolumeTT", symbol, period, None, None, start_time, stop_time, "float")
       
    def CopyTicks(self, symbol, Start_Time_MSC, count):
        try:
            result = self.MQL5("copyticks," + str(symbol).upper() + "," + str(Start_Time_MSC) + "," + str(count))
            return [dictMQLTick(i) for i in result]        
        except: 
            logger.exception("Erro def CopyTicks " + str(symbol).upper() + "," + str(Start_Time_MSC) + "," + str(count))
            return None

    def CopyTicksRange(self, symbol, Start_Time_MSC, Stop_Time_MSC):
        try:
            result = self.MQL5("copyticksrange," + str(symbol).upper() + "," + str(Start_Time_MSC) + "," + str(Stop_Time_MSC))
            return [dictMQLTick(i) for i in result]
        except: 
            logger.exception("Erro def CopyTicksRange " + str(symbol).upper() + "," + str(Start_Time_MSC) + "," + str(Stop_Time_MSC))
            return None

    def Buy(self, symbol, volume, price, sl, tp, comment):
        return self.SendTrade("buy", symbol, volume, price, sl, tp, comment)
    
    def Sell(self, symbol, volume, price, sl, tp, comment):
        return self.SendTrade("sell", symbol, volume, price, sl, tp, comment)
      
    def BuyLimit(self, symbol, volume, price, sl, tp, comment):
        return self.SendTrade("buylimit", symbol, volume, price, sl, tp, comment)
     
    def SellLimit(self, symbol, volume, price, sl, tp, comment):
        return self.SendTrade("selllimit", symbol, volume, price, sl, tp, comment)
        
    def BuyStop(self, symbol, volume, price, sl, tp, comment):
        return self.SendTrade("buystop", symbol, volume, price, sl, tp, comment)

    def SellStop(self, symbol, volume, price, sl, tp, comment): 
        return self.SendTrade("sellstop", symbol, volume, price, sl, tp, comment)
    
    def PositionsTotal(self):
        try: 
            return int(self.MQL5("positionstotal"))
        except: 
            logger.exception("Error PositionsTotal")
            return None

    def PositionAll(self):
        try:
            result = self.MQL5("positionall")
            return [dictPOSITION(i) for i in result]
        except: 
            logger.exception("Error PositionAll")
            return None

    def OrdersTotal(self):
        try: 
            return int(self.MQL5("orderstotal"))
        except: 
            logger.exception("Error OrdersTotal")
            return None

    def OrderAll(self):
        try:
            result = self.MQL5("orderall")
            return [dictORDER(i) for i in result]
        except: 
            logger.exception("Error OrderAll")
            return None

    def AccountInfoAll(self):
        try:
            result = self.MQL5("accountinfoall")
            return [dictACCOUNT(i) for i in result]
        except: 
            logger.exception("Error AccountInfoAll")
            return None

    def HistoryDealTotalDay(self):
        try: 
            return int(self.MQL5("historydealtotalday"))
        except: 
            logger.exception("Error HistoryDealTotalDay")
            return None

    def HistoryDealTotal(self, Start_Time, Stop_Time):
        try: 
            return int(self.MQL5("historydealtotal," + str(Start_Time) + "," + str(Stop_Time)))
        except: 
            logger.exception("Error HistoryDealTotal," + str(Start_Time) + "," + str(Stop_Time))
            return None

    def HistoryDealAllDay(self):
        try:
            result = self.MQL5("historydealallday")
            return [dictDEAL(i) for i in result]
        except: 
            logger.exception("Error HistoryDealAllDay")
            return None

    def HistoryDealAll(self, Start_Time, Stop_Time):      
        try:
            result = self.MQL5("historydealall," + str(Start_Time) + "," + str(Stop_Time))
            return [dictDEAL(i) for i in result]       
        except: 
            logger.exception("Error HistoryDealAll," + str(Start_Time) + "," + str(Stop_Time))
            return None

    def CancelAllOrder(self):
        try: 
            logger.info("CancelAllOrder")
            return int(self.MQL5("cancelallorder"))
        except: 
            logger.exception("CancelAllOrder")
            return None

    def OrderDelete(self, ticket):
        try: 
            logger.info("OrderDelete ticket=" + str(ticket))
            return int(self.MQL5("orderdelete," + str(ticket)))
        except:
            logger.exception("OrderDelete ticket=" + str(ticket)) 
            return None

    def PositionCloseSymbol(self, symbol):
        try: 
            logger.info("PositionCloseSymbol symbol=" + str(symbol).upper())
            return int(self.MQL5("positionclosesymbol," + str(symbol).upper()))
        except: 
            logger.exception("PositionCloseSymbol symbol=" + str(symbol).upper()) 
            return None

    def PositionCloseTicket(self, ticket):
        try:
            logger.info("PositionCloseTicket ticket=" + str(ticket)) 
            return int(self.MQL5("positioncloseticket," + str(ticket)))
        except:
            logger.exception("PositionCloseTicket ticket=" + str(ticket)) 
            return None

    def PositionClosePartial(self, ticket, volume):
        try: 
            logger.info("PositionClosePartial ticket=" + str(ticket) + ", volume=" + str(volume))
            return int(self.MQL5("positionclosepartial," + str(ticket) + "," + str(volume)))
        except: 
            logger.exception("PositionClosePartial ticket=" + str(ticket) + ", volume=" + str(volume)) 
            return None

    def PositionModifySymbol(self, symbol, sl, tp):
        try: 
            logger.info("PositionModifySymbol symbol=" + str(symbol).upper() + ", sl=" + str(sl) + ", tp=" + str(tp))
            return int(self.MQL5("positionmodifysymbol," + str(symbol).upper() + "," + str(sl) + "," + str(tp)))
        except: 
            logger.exception("PositionModifySymbol symbol=" + str(symbol).upper() + ", sl=" + str(sl) + ", tp=" + str(tp))
            return None

    def PositionModifyTicket(self, ticket, sl, tp):
        try:
            logger.info("PositionModifyTicket symbol=" + str(ticket) + ", sl=" + str(sl) + ", tp=" + str(tp))
            return int(self.MQL5("positionmodifyticket," + str(ticket) + "," + str(sl) + "," + str(tp)))
        except: 
            logger.exception("PositionModifyTicket symbol=" + str(ticket) + ", sl=" + str(sl) + ", tp=" + str(tp))
            return None

    def CancelAllPosition(self):
        try: 
            logger.info("CancelAllPosition")
            return int(self.MQL5("cancelallposition"))
        except: 
            logger.exception("CancelAllPosition")
            return None

    def SetEAMagicNumber(self, number):
        try: 
            logger.info("SetEAMagicNumber number=" + str(number))
            return int(self.MQL5("seteamagicnumber," + str(number)))
        except:
            logger.exception("SetEAMagicNumber number=" + str(number))
            return None

    def SymbolInfoAll(self, symbol):
        try:
            result = self.MQL5("symbolinfoall," + str(symbol).upper())[0]
            return result
        except:
            logger.exception("SymbolInfoAll symbol=" + str(symbol).upper())
            return None


    def OptionInfo(self, symbol):
        try:
            result = self.MQL5("optioninfo," + str(symbol).upper())[0]    
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
        except: 
            logger.exception("OptionInfo symbol=" + str(symbol).upper())
            return None

def dictPOSITION(i):
    try:
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
    except: return None

def dictORDER(i):
    try:
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
    except: return None

def dictDEAL(i):
    try:
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
    except: return None

def dictACCOUNT(i):
    try:
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
    except: return None

def dictMQLRates(i):
    try:
        return { 'TIME': datetime.strptime(i[0], "%Y.%m.%d %H:%M:%S"),
        'OPEN': float(i[1]),
        'HIGH': float(i[2]),
        'LOW': float(i[3]),
        'CLOSE': float(i[4]),
        'TICK_VOLUME': int(i[5]),
        'SPREAD': int(i[6]),
        'REAL_VOLUME': int(i[7]) }
    except: return None

def dictMQLTick(i):
    try:
        return { 'TIME': datetime.strptime(i[0], "%Y.%m.%d %H:%M:%S"),
        'BID': float(i[1]),
        'ASK': float(i[2]),
        'LAST': float(i[3]),
        'VOLUME': float(i[4]),
        'TIME_MSC': int(i[5]),
        'FLAGS': int(i[6]),
        'VOLUME_REAL': float(i[7]) }
    except: return None