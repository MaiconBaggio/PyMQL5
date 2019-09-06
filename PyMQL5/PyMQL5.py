import socket
from .Tools import MQL5Period, MQL5parse
from datetime import datetime 

class PyMQL5:
    def __init__(self):
        try:
            self.client = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.HOST = "127.0.0.1"
            self.PORT = 1235
        except:
            print("Error socket client UDP!")

    def MQL5(self, text):        
        try:
            self.client.sendto(text.encode(), (self.HOST, self.PORT))
            self.client.settimeout(1)
            recv, _ = self.client.recvfrom(1024000)
            return MQL5parse(recv.decode("utf-8"))
        except:
            return None

    def iOpen(self, symbol, period, shift):
        try: return float(self.MQL5("iopen,"+ str(symbol).upper() + "," + MQL5Period(period) + "," + str(shift)))
        except: return None        

    def iHigh(self, symbol, period, shift):
        try: return float(self.MQL5("ihigh,"+ str(symbol).upper() + "," + MQL5Period(period) + "," + str(shift)))
        except: return None
        
    def iLow(self, symbol, period, shift):
        try: return float(self.MQL5("ilow,"+ str(symbol).upper() + "," + MQL5Period(period) + "," + str(shift)))       
        except: return None
 
    def iClose(self, symbol, period, shift):
        try: return float(self.MQL5("iclose,"+ str(symbol).upper() + "," + MQL5Period(period) + "," + str(shift)))
        except: return None
        
    def iTime(self, symbol, period, shift):
        try: return datetime.strptime(self.MQL5("itime,"+ str(symbol).upper() + "," + MQL5Period(period) + "," + str(shift)), "%Y.%m.%d %H:%M")
        except: return None
        
    def iVolume(self, symbol, period, shift):
        try: return int(self.MQL5("ivolume,"+ str(symbol).upper() + "," + MQL5Period(period) + "," + str(shift)))
        except: return None
        
    def CopyRates(self, symbol, period, start_Pos, count):
        try:
            result = self.MQL5("copyrates," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_Pos) + "," + str(count))
            return [dictMQLRates(i) for i in result]
        except: return None

    def CopyRatesTC(self, symbol, period, start_time, count):
        try: 
            result = self.MQL5("copyratesTC," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(count))
            return [dictMQLRates(i) for i in result]
        except: return None
        
    def CopyRatesTT(self, symbol, period, start_time, stop_time):
        try:
            result = self.MQL5("copyratesTT," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(stop_time))
            return [dictMQLRates(i) for i in result]
        except: return None

    def CopyOpen(self, symbol, period, start_pos, count):
        try:
            result = self.MQL5("copyopen," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_pos) + "," + str(count))[0]
            return [float(i) for i in result]        
        except: return None

    def CopyOpenTC(self, symbol, period, start_time, count):
        try:
            result = self.MQL5("copyopenTC," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(count))[0]
            return [float(i) for i in result]        
        except: return None
        
    def CopyOpenTT(self, symbol, period, start_time, stop_time):
        try:
            result = self.MQL5("copyopenTT," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(stop_time))[0]
            return [float(i) for i in result]
        except: return None
        
    def CopyHigh(self, symbol, period, start_pos, count):
        try:
            result = self.MQL5("copyhigh," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_pos) + "," + str(count))[0]
            return [float(i) for i in result]
        except: return None
    
    def CopyHighTC(self, symbol, period, start_time, count):
        try:
            result = self.MQL5("copyhighTC," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(count))[0]        
            return [float(i) for i in result]
        except: return None

    def CopyHighTT(self, symbol, period, start_time, stop_time):
        try:
            result =  self.MQL5("copyhighTT," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(stop_time))[0]
            return [float(i) for i in result]
        except: return None

    def CopyLow(self, symbol, period, start_pos, count):
        try:
            result = self.MQL5("copylow," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_pos) + "," + str(count))[0]        
            return [float(i) for i in result]
        except: return None
    
    def CopyLowTC(self, symbol, period, start_time, count):
        try:
            result = self.MQL5("copylowTC," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(count))[0]        
            return [float(i) for i in result]
        except: return None

    def CopyLowTT(self, symbol, period, start_time, stop_time):
        try:
            result = self.MQL5("copylowTT," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(stop_time))[0]
            return [float(i) for i in result]
        except: return None

    def CopyClose(self, symbol, period, start_pos, count):
        try:
            result = self.MQL5("copyclose," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_pos) + "," + str(count))[0]        
            return [float(i) for i in result]
        except: return None
    
    def CopyCloseTC(self, symbol, period, start_time, count):
        try:
            result = self.MQL5("copycloseTC," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(count))[0]        
            return [float(i) for i in result]
        except: return None

    def CopyCloseTT(self, symbol, period, start_time, stop_time):
        try:
            result = self.MQL5("copycloseTT," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(stop_time))[0]
            return [float(i) for i in result]
        except: return None

    def CopyVolume(self, symbol, period, start_pos, count):
        try:
            result = self.MQL5("copyvolume," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_pos) + "," + str(count))[0]        
            return [int(i) for i in result]
        except: return None
    
    def CopyVolumeTC(self, symbol, period, start_time, count):
        try:
            result = self.MQL5("copyvolumeTC," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(count))[0]        
            return [int(i) for i in result]
        except: return None

    def CopyVolumeTT(self, symbol, period, start_time, stop_time):
        try:
            result = self.MQL5("copyvolumeTT," + str(symbol).upper() + "," + MQL5Period(period) + "," + str(start_time) + "," + str(stop_time))[0]
            return [int(i) for i in result]
        except: return None

    def CopyTicks(self, symbol, Start_Time_MSC, count):
        try:
            result = self.MQL5("copyticks," + str(symbol).upper() + "," + str(Start_Time_MSC) + "," + str(count))
            return [dictMQLTick(i) for i in result]        
        except: return None

    def CopyTicksRange(self, symbol, Start_Time_MSC, Stop_Time_MSC):
        try:
            result = self.MQL5("copyticksrange," + str(symbol).upper() + "," + str(Start_Time_MSC) + "," + str(Stop_Time_MSC))
            return [dictMQLTick(i) for i in result]
        except: return None

    def Buy(self, symbol, volume, price, sl, tp, comment):
        try: return int(self.MQL5("buy," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment)))
        except: return None
    
    def Sell(self, symbol, volume, price, sl, tp, comment):
        try: return int(self.MQL5("sell," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment)))
        except: return None
    
    def BuyLimit(self, symbol, volume, price, sl, tp, comment):
        try: return int(self.MQL5("buylimit," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment)))
        except: return None

    def SellLimit(self, symbol, volume, price, sl, tp, comment):
        try: return int(self.MQL5("selllimit," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment)))
        except: return None

    def BuyStop(self, symbol, volume, price, sl, tp, comment):
        try: return int(self.MQL5("buystop," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(tp) + "," + str(comment)))
        except: return None

    def SellStop(self, symbol, volume, price, sl, tp, comment): 
        try: return int(self.MQL5("sellstop," + str(symbol).upper() + "," + str(volume) + "," + str(price) + "," + str(sl) + "," + str(TP) + "," + str(comment)))
        except: return None

    def PositionsTotal(self):
        try: return int(self.MQL5("positionstotal"))
        except: return None

    def PositionAll(self):
        try:
            result = self.MQL5("positionall")
            return [dictPOSITION(i) for i in result]
        except: return None

    def OrdersTotal(self):
        try: return int(self.MQL5("orderstotal"))
        except: return None

    def OrderAll(self):
        try:
            result = self.MQL5("orderall")
            return [dictORDER(i) for i in result]
        except: return None

    def AccountInfoAll(self):
        try:
            result = self.MQL5("accountinfoall")
            return [dictACCOUNT(i) for i in result]
        except: return None

    def HistoryDealTotalDay(self):
        try: return int(self.MQL5("historydealtotalday"))
        except: return None

    def HistoryDealTotal(self, Start_Time, Stop_Time):
        try: return int(self.MQL5("historydealtotal," + str(Start_Time) + "," + str(Stop_Time)))
        except: return None

    def HistoryDealAllDay(self):
        try:
            result = self.MQL5("historydealallday")
            return [dictDEAL(i) for i in result]
        except: return None

    def HistoryDealAll(self, Start_Time, Stop_Time):      
        try:
            result = self.MQL5("historydealall," + str(Start_Time) + "," + str(Stop_Time))
            return [dictDEAL(i) for i in result]       
        except: return None

    def CancelAllOrder(self):
        try: return int(self.MQL5("cancelallorder"))
        except: return None

    def OrderDelete(self, ticket):
        try: return int(self.MQL5("orderdelete," + str(ticket)))
        except: return None

    def PositionCloseSymbol(self, symbol):
        try: return int(self.MQL5("positionclosesymbol," + str(symbol).upper()))
        except: return None

    def PositionCloseTicket(self, ticket):
        try: return int(self.MQL5("positioncloseticket," + str(ticket)))
        except: return None

    def PositionClosePartial(self, ticket, volume):
        try: return int(self.MQL5("positionclosepartial," + str(ticket) + "," + str(volume)))
        except: return None

    def PositionModifySymbol(self, symbol, sl, tp):
        try: return int(self.MQL5("positionmodifysymbol," + str(symbol).upper() + "," + str(sl) + "," + str(tp)))
        except: return None

    def PositionModifyTicket(self, ticket, sl, tp):
        try: return int(self.MQL5("positionmodifyticket," + str(ticket) + "," + str(sl) + "," + str(tp)))
        except: return None

    def CancelAllPosition(self):
        try: return int(self.MQL5("cancelallposition"))
        except: return None

    def SetEAMagicNumber(self, number):
        try: return int(self.MQL5("seteamagicnumber," + str(number)))
        except: return None

    def SymbolInfoAll(self, symbol):
        result = self.MQL5("symbolinfoall," + str(symbol).upper())[0]
        if result == None: return result
        return result

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
        except: return None

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