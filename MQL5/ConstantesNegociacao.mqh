///////////////////////////////////////////////////////////////////////////////////
//   Orders
///////////////////////////////////////////////////////////////////////////////////
string getENUM_ORDER_TYPE(ulong value){
   if(value == ORDER_TYPE_BUY)
      return "ORDER_TYPE_BUY";
   if(value == ORDER_TYPE_SELL)
      return "ORDER_TYPE_SELL";
   if(value == ORDER_TYPE_BUY_LIMIT)
      return "ORDER_TYPE_BUY_LIMIT";
   if(value == ORDER_TYPE_SELL_LIMIT)
      return "ORDER_TYPE_SELL_LIMIT";         
   if(value == ORDER_TYPE_BUY_STOP)
      return "ORDER_TYPE_BUY_STOP";
   if(value == ORDER_TYPE_SELL_STOP)
      return "ORDER_TYPE_SELL_STOP";
   if(value == ORDER_TYPE_BUY_STOP_LIMIT)
      return "ORDER_TYPE_BUY_STOP_LIMIT";
   if(value == ORDER_TYPE_SELL_STOP_LIMIT)
      return "ORDER_TYPE_SELL_STOP_LIMIT";  
   if(value == ORDER_TYPE_CLOSE_BY)
      return "ORDER_TYPE_CLOSE_BY";          
   return "";        
}

string getENUM_ORDER_STATE(ulong value){
   if(value == ORDER_STATE_STARTED)
      return "ORDER_STATE_STARTED";
   if(value == ORDER_STATE_PLACED)
      return "ORDER_STATE_PLACED";
   if(value == ORDER_STATE_CANCELED)
      return "ORDER_STATE_CANCELED";
   if(value == ORDER_STATE_PARTIAL)
      return "ORDER_STATE_PARTIAL";
   if(value == ORDER_STATE_FILLED)
      return "ORDER_STATE_FILLED";
   if(value == ORDER_STATE_REJECTED)
      return "ORDER_STATE_REJECTED";
   if(value == ORDER_STATE_EXPIRED)
      return "ORDER_STATE_EXPIRED";
   if(value == ORDER_STATE_REQUEST_ADD)
      return "ORDER_STATE_REQUEST_ADD";
   if(value == ORDER_STATE_REQUEST_MODIFY)
      return "ORDER_STATE_REQUEST_MODIFY";
   if(value == ORDER_STATE_REQUEST_CANCEL)
      return "ORDER_STATE_REQUEST_CANCEL";                              
   return "";   
}

string getENUM_ORDER_TYPE_FILLING(ulong value){
   if(value == ORDER_FILLING_FOK)
      return "ORDER_FILLING_FOK";
   if(value == ORDER_FILLING_IOC)
      return "ORDER_FILLING_IOC";
   if(value == ORDER_FILLING_RETURN)
      return "ORDER_FILLING_RETURN";         
   return "";   
}

string getENUM_ORDER_TYPE_TIME(ulong value){
   if(value == ORDER_TIME_GTC)
      return "ORDER_TIME_GTC";
   if(value == ORDER_TIME_DAY)   
      return "ORDER_TIME_DAY";
   if(value == ORDER_TIME_SPECIFIED)
      return "ORDER_TIME_SPECIFIED";
   if(value == ORDER_TIME_SPECIFIED_DAY)
      return "ORDER_TIME_SPECIFIED_DAY";       
   return "";   
}

string OrdersTotalToString(){
   return IntegerToString(OrdersTotal());
}

string OrdersGetTicket(ulong ticket){
   if(OrderSelect(ticket))
      return IntegerToString(OrderGetInteger(ORDER_TICKET));
   return "";   
}

string OrderGetTimeSetup(ulong ticket){
   if(OrderSelect(ticket))
      return IntegerToString(OrderGetInteger(ORDER_TIME_SETUP));
   return "";   
}

string OrderGetType(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_TYPE(OrderGetInteger(ORDER_TYPE));
   return "";   
}

string OrderGetState(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_STATE));
   return "";   
}

string OrderGetTimeExpiration(ulong ticket){
   if(OrderSelect(ticket))
      return TimeToString(OrderGetInteger(ORDER_TIME_EXPIRATION), TIME_DATE | TIME_MINUTES | TIME_SECONDS);
   return "";   
}

string OrderGetTimeDone(ulong ticket){
   if(OrderSelect(ticket))
      return TimeToString(OrderGetInteger(ORDER_TIME_DONE), TIME_DATE | TIME_MINUTES | TIME_SECONDS);
   return "";   
}

string OrderGetTimeSetupMSC(ulong ticket){
   if(OrderSelect(ticket))
      return IntegerToString(OrderGetInteger(ORDER_TIME_SETUP_MSC));
   return "";   
}

string OrderGetTimeDoneMSC(ulong ticket){
   if(OrderSelect(ticket))
      return IntegerToString(OrderGetInteger(ORDER_TIME_DONE_MSC));
   return "";   
}

string OrderGetTypeFilling(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_TYPE_FILLING(OrderGetInteger(ORDER_TYPE_FILLING));
   return "";   
}

string OrderGetTime(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_TYPE_TIME(OrderGetInteger(ORDER_TYPE_TIME));
   return "";   
}

string OrderGetMagic(ulong ticket){
   if(OrderSelect(ticket))
      return IntegerToString(OrderGetInteger(ORDER_MAGIC));
   return "";   
}

string OrderGetPositionID(ulong ticket){
   if(OrderSelect(ticket))
      return IntegerToString(OrderGetInteger(ORDER_POSITION_ID));
   return "";   
}

string OrderGetPositionBYID(ulong ticket){
   if(OrderSelect(ticket))
      return IntegerToString(OrderGetInteger(ORDER_POSITION_BY_ID));
   return "";   
}

string OrderGetVolumeInitial(ulong ticket){
   if(OrderSelect(ticket))
      return DoubleToString(OrderGetDouble(ORDER_VOLUME_INITIAL));
   return "";   
}

string OrderGetVolumeCurrent(ulong ticket){
   if(OrderSelect(ticket))
      return DoubleToString(OrderGetDouble(ORDER_VOLUME_CURRENT));
   return "";   
}

string OrderGetPriceOpen(ulong ticket){
   if(OrderSelect(ticket))
      return DoubleToString(OrderGetDouble(ORDER_PRICE_OPEN));
   return "";   
}

string OrderGetSL(ulong ticket){
   if(OrderSelect(ticket))
      return DoubleToString(OrderGetDouble(ORDER_SL));
   return "";   
}

string OrderGetTP(ulong ticket){
   if(OrderSelect(ticket))
      return DoubleToString(OrderGetDouble(ORDER_TP));
   return "";   
}

string OrderGetPriceCurrent(ulong ticket){
   if(OrderSelect(ticket))
      return DoubleToString(OrderGetDouble(ORDER_PRICE_CURRENT));
   return "";   
}

string OrderGetPriceStopLimit(ulong ticket){
   if(OrderSelect(ticket))
      return DoubleToString(OrderGetDouble(ORDER_PRICE_STOPLIMIT));
   return "";   
}

string OrderGetSymbol(ulong ticket){
   if(OrderSelect(ticket))
      return OrderGetString(ORDER_SYMBOL);
   return "";   
}

string OrderGetCommet(ulong ticket){
   if(OrderSelect(ticket))
      return OrderGetString(ORDER_COMMENT);
   return "";   
}

string OrderAll(){
   int size = OrdersTotal();
   ulong ticket;
   string str = "";
   for(int i = 0; i < size; i++){
      ticket = OrderGetTicket(i);
      if( i != 0) str += ";";
      if(OrderSelect(ticket)){
         str += IntegerToString(OrderGetInteger(ORDER_TICKET)) + ",";   
         str += IntegerToString(OrderGetInteger(ORDER_TIME_SETUP)) + ",";
         str += getENUM_ORDER_TYPE(OrderGetInteger(ORDER_TYPE)) + ",";
         str += getENUM_ORDER_STATE(OrderGetInteger(ORDER_STATE)) + ",";
         str += TimeToString(OrderGetInteger(ORDER_TIME_EXPIRATION), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
         str += TimeToString(OrderGetInteger(ORDER_TIME_DONE), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
         str += IntegerToString(OrderGetInteger(ORDER_TIME_SETUP_MSC)) + ",";
         str += IntegerToString(OrderGetInteger(ORDER_TIME_DONE_MSC)) + ",";
         str += getENUM_ORDER_TYPE_FILLING(OrderGetInteger(ORDER_TYPE_FILLING)) + ",";
         str += getENUM_ORDER_TYPE_TIME(OrderGetInteger(ORDER_TYPE_TIME)) + ",";
         str += IntegerToString(OrderGetInteger(ORDER_MAGIC)) + ",";
         str += IntegerToString(OrderGetInteger(ORDER_POSITION_ID)) + ",";
         str += IntegerToString(OrderGetInteger(ORDER_POSITION_BY_ID)) + ",";
         str += DoubleToString(OrderGetDouble(ORDER_VOLUME_INITIAL)) + ",";
         str += DoubleToString(OrderGetDouble(ORDER_VOLUME_CURRENT)) + ",";
         str += DoubleToString(OrderGetDouble(ORDER_PRICE_OPEN)) + ",";
         str += DoubleToString(OrderGetDouble(ORDER_SL)) + ",";
         str += DoubleToString(OrderGetDouble(ORDER_TP)) + ",";
         str += DoubleToString(OrderGetDouble(ORDER_PRICE_CURRENT)) + ",";
         str += DoubleToString(OrderGetDouble(ORDER_PRICE_STOPLIMIT)) + ",";
         str += OrderGetString(ORDER_SYMBOL) + ",";
         str += OrderGetString(ORDER_COMMENT);
      }
   }   
   return str;
}


///////////////////////////////////////////////////////////////////////////////////
//   Positions
///////////////////////////////////////////////////////////////////////////////////
string getENUM_POSITION_TYPE(long value){
   return "POSITION_TYPE_" + ((value == POSITION_TYPE_BUY) ? "BUY": "SELL");
}

string getENUM_POSITION_REASON(long value){
   if(value == POSITION_REASON_CLIENT)
      return "POSITION_REASON_CLIENT";
   if(value == POSITION_REASON_MOBILE)
      return "POSITION_REASON_MOBILE";
   if(value == POSITION_REASON_WEB)
      return "POSITION_REASON_WEB";
   return "POSITION_REASON_EXPERT";         
}

string PositionsTotalToString(){
   return IntegerToString(PositionsTotal());
}

string PositionGetTiket(string symbol){
   PositionSelect(symbol);
   return IntegerToString(PositionGetInteger(POSITION_TICKET));
}

string PositionGetTime(string symbol){
   PositionSelect(symbol);
   return TimeToString(PositionGetInteger(POSITION_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS);
}

string PositionGetTimeMSC(string symbol){
   PositionSelect(symbol);
   return IntegerToString(PositionGetInteger(POSITION_TIME_MSC));
}

string PositionGetTimeUpdate(string symbol){
   PositionSelect(symbol);
   return IntegerToString(PositionGetInteger(POSITION_TIME_UPDATE));
}

string PositionGetTimeUpdateMSC(string symbol){
   PositionSelect(symbol);
   return IntegerToString(PositionGetInteger(POSITION_TIME_UPDATE_MSC));
}

string PositionGetType(string symbol){
   PositionSelect(symbol);
   return getENUM_POSITION_TYPE(PositionGetInteger(POSITION_TYPE));
}

string PositionGetMagic(string symbol){
   PositionSelect(symbol);
   return IntegerToString(PositionGetInteger(POSITION_MAGIC));
}

string PositionGetIdentifier(string symbol){
   PositionSelect(symbol);
   return IntegerToString(PositionGetInteger(POSITION_IDENTIFIER));
}

string PositionGetReason(string symbol){
   PositionSelect(symbol);
   return getENUM_POSITION_REASON(PositionGetInteger(POSITION_REASON));
}

string PositionGetVolume(string symbol){
   PositionSelect(symbol);
   return DoubleToString(PositionGetDouble(POSITION_VOLUME), _Digits_);
}

string PositionGetPriceOpen(string symbol){
   PositionSelect(symbol);
   return DoubleToString(PositionGetDouble(POSITION_PRICE_OPEN), _Digits_);
}

string PositionGetSL(string symbol){
   PositionSelect(symbol);
   return DoubleToString(PositionGetDouble(POSITION_SL), _Digits_);
}

string PositionGetTP(string symbol){
   PositionSelect(symbol);
   return DoubleToString(PositionGetDouble(POSITION_TP), _Digits_);
}

string PositionGetPriceCurrent(string symbol){
   PositionSelect(symbol);
   return DoubleToString(PositionGetDouble(POSITION_PRICE_CURRENT), _Digits_);
}

string PositionGetProfit(string symbol){
   PositionSelect(symbol);
   return DoubleToString(PositionGetDouble(POSITION_PROFIT), _Digits_);
}

string PositonGetCommet(string symbol){
   PositionSelect(symbol);
   return PositionGetString(POSITION_COMMENT);
}

string PositonGetExternalID(string symbol){
   PositionSelect(symbol);
   return PositionGetString(POSITION_EXTERNAL_ID);
}

string PositionAll(){
   int size = PositionsTotal();
   string str = "", symbol;
   for(int i = 0; i < size; i++){
      if( i != 0) str += ";";
      symbol = PositionGetSymbol(i);
      PositionSelect(symbol);
      str += IntegerToString(PositionGetInteger(POSITION_TICKET)) + ",";
      str += TimeToString(PositionGetInteger(POSITION_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
      str += IntegerToString(PositionGetInteger(POSITION_TIME_MSC)) + ",";
      str += IntegerToString(PositionGetInteger(POSITION_TIME_UPDATE))+ ",";
      str += IntegerToString(PositionGetInteger(POSITION_TIME_UPDATE_MSC)) + ",";
      str += getENUM_POSITION_TYPE(PositionGetInteger(POSITION_TYPE)) + ",";
      str += IntegerToString(PositionGetInteger(POSITION_MAGIC)) + ",";
      str += IntegerToString(PositionGetInteger(POSITION_IDENTIFIER)) + ",";
      str += getENUM_POSITION_REASON(PositionGetInteger(POSITION_REASON)) + ",";
      str += DoubleToString(PositionGetDouble(POSITION_VOLUME), _Digits_) + ",";
      str += DoubleToString(PositionGetDouble(POSITION_PRICE_OPEN), _Digits_) + ",";
      str += DoubleToString(PositionGetDouble(POSITION_SL), _Digits_) + ",";
      str += DoubleToString(PositionGetDouble(POSITION_TP), _Digits_)+ ",";
      str += DoubleToString(PositionGetDouble(POSITION_PRICE_CURRENT), _Digits_) + ",";
      str += DoubleToString(PositionGetDouble(POSITION_PROFIT), _Digits_) + ",";
      str += PositionGetString(POSITION_SYMBOL) + ",";
      str += PositionGetString(POSITION_COMMENT) + ",";
      str += PositionGetString(POSITION_EXTERNAL_ID);
   }
   return str;
}

///////////////////////////////////////////////////////////////////////////////////
//    History Deal
///////////////////////////////////////////////////////////////////////////////////

string getENUM_DEAL_TYPE(ulong value){
   if(value == DEAL_TYPE_BUY)
      return "DEAL_TYPE_BUY";
   if(value == DEAL_TYPE_SELL)
      return "DEAL_TYPE_SELL";
   if(value == DEAL_TYPE_BALANCE)
      return "DEAL_TYPE_BALANCE";      
   if(value == DEAL_TYPE_CREDIT)
      return "DEAL_TYPE_CREDIT";
   if(value == DEAL_TYPE_CHARGE)
      return "DEAL_TYPE_CHARGE";
   if(value == DEAL_TYPE_CORRECTION)
      return "DEAL_TYPE_CORRECTION";
   if(value == DEAL_TYPE_BONUS)
      return "DEAL_TYPE_BONUS";
   if(value == DEAL_TYPE_COMMISSION)
      return "DEAL_TYPE_COMMISSION";
   if(value == DEAL_TYPE_COMMISSION_DAILY)
      return "DEAL_TYPE_COMMISSION_DAILY";
   if(value == DEAL_TYPE_COMMISSION_MONTHLY)
      return "DEAL_TYPE_COMMISSION_MONTHLY";                     
   if(value == DEAL_TYPE_COMMISSION_AGENT_DAILY)
      return "DEAL_TYPE_COMMISSION_AGENT_DAILY";
   if(value == DEAL_TYPE_COMMISSION_AGENT_MONTHLY)
      return "DEAL_TYPE_COMMISSION_AGENT_MONTHLY";
   if(value == DEAL_TYPE_INTEREST)
      return "DEAL_TYPE_INTEREST";
   if(value == DEAL_TYPE_BUY_CANCELED)
      return "DEAL_TYPE_BUY_CANCELED";
   if(value == DEAL_TYPE_SELL_CANCELED)
      return "DEAL_TYPE_SELL_CANCELED";
   if(value == DEAL_DIVIDEND)
      return "DEAL_DIVIDEND";                  
   if(value == DEAL_DIVIDEND_FRANKED)
      return "DEAL_DIVIDEND_FRANKED";
   return "DEAL_TAX";      
}

string getENUM_DEAL_ENTRY(ulong value){
   if(value == DEAL_ENTRY_IN)
      return "DEAL_ENTRY_IN";
   if(value == DEAL_ENTRY_OUT)
      return "DEAL_ENTRY_OUT";
   if(value == DEAL_ENTRY_INOUT)
      return "DEAL_ENTRY_INOUT";
   return "DEAL_ENTRY_OUT_BY";         
}

string getENUM_DEAL_REASON(ulong value){
   if(value == DEAL_REASON_CLIENT)
      return "DEAL_REASON_CLIENT";
   if(value == DEAL_REASON_MOBILE)
      return "DEAL_REASON_MOBILE";
   if(value == DEAL_REASON_WEB)
      return "DEAL_REASON_WEB";
   if(value == DEAL_REASON_EXPERT)
      return "DEAL_REASON_EXPERT";
   if(value == DEAL_REASON_SL)
      return "DEAL_REASON_SL";
   if(value == DEAL_REASON_TP)
      return "DEAL_REASON_TP";
   if(value == DEAL_REASON_SO)
      return "DEAL_REASON_SO";
   if(value == DEAL_REASON_ROLLOVER)
      return "DEAL_REASON_ROLLOVER";
   if(value == DEAL_REASON_VMARGIN)
      return "DEAL_REASON_VMARGIN";       
   return "DEAL_REASON_SPLIT";                    
}

ulong HistoryDealGetTotalDay(){
  HistorySelect(StringToTime(TimeToString(TimeTradeServer(), TIME_DATE) + " 00:01"), StringToTime(TimeToString(TimeTradeServer(), TIME_DATE) + " 23:59"));   
  return HistoryDealsTotal();
}

ulong HistoryDealGetTotal(datetime start, datetime end){
   HistorySelect(start, end);   
   return HistoryDealsTotal();
}


string AllHistory(int size){
   string str = "";
   ulong ticket;
   for(int i = 0; i < size; i++){
      if(i != 0) str += ";";
      ticket = HistoryDealGetTicket(i);
      str += IntegerToString(HistoryDealGetInteger(ticket, DEAL_TICKET)) + ",";
      str += IntegerToString(HistoryDealGetInteger(ticket, DEAL_ORDER)) + ",";
      str += TimeToString(HistoryDealGetInteger(ticket, DEAL_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
      str += IntegerToString(HistoryDealGetInteger(ticket, DEAL_TIME_MSC)) + ",";
      str += getENUM_DEAL_TYPE(HistoryDealGetInteger(ticket, DEAL_TYPE)) + ",";
      str += getENUM_DEAL_ENTRY(HistoryDealGetInteger(ticket, DEAL_ENTRY)) + ",";
      str += IntegerToString(HistoryDealGetInteger(ticket, DEAL_MAGIC)) + ",";
      str += getENUM_DEAL_REASON(HistoryDealGetInteger(ticket, DEAL_REASON)) + ",";
      str += IntegerToString(HistoryDealGetInteger(ticket, DEAL_POSITION_ID)) + ",";
      str += DoubleToString(HistoryDealGetDouble(ticket, DEAL_VOLUME)) + ",";
      str += DoubleToString(HistoryDealGetDouble(ticket, DEAL_PRICE)) + ",";
      str += DoubleToString(HistoryDealGetDouble(ticket, DEAL_COMMISSION)) + ",";
      str += DoubleToString(HistoryDealGetDouble(ticket, DEAL_SWAP)) + ",";
      str += DoubleToString(HistoryDealGetDouble(ticket, DEAL_PROFIT)) + ",";
      str += HistoryDealGetString(ticket, DEAL_SYMBOL) + ",";
      str += HistoryDealGetString(ticket, DEAL_COMMENT) + ","; 
   }
   return str;
}

string HistoryDealAllDay(){
   int size = (int)HistoryDealGetTotalDay();
   return AllHistory(size);
}

string HistoryDealAll(datetime start, datetime end){
   int size = (int)HistoryDealGetTotal(start, end);
   return AllHistory(size);
}

