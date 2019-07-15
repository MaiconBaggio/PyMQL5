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
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_EXPIRATION));
   return "";   
}

string OrderGetTimeDone(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_DONE));
   return "";   
}

string OrderGetTimeSetupMSC(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_SETUP_MSC));
   return "";   
}

string OrderGetTimeDoneMSC(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_DONE_MSC));
   return "";   
}

string OrderGetTypeFilling(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_TYPE_FILLING(OrderGetInteger(ORDER_TYPE_FILLING));
   return "";   
}

string OrderGetTimeExpiration(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_EXPIRATION));
   return "";   
}

string OrderGetTimeExpiration(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_EXPIRATION));
   return "";   
}

string OrderGetTimeExpiration(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_EXPIRATION));
   return "";   
}

string OrderGetTimeExpiration(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_EXPIRATION));
   return "";   
}

string OrderGetTimeExpiration(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_EXPIRATION));
   return "";   
}

string OrderGetTimeExpiration(ulong ticket){
   if(OrderSelect(ticket))
      return getENUM_ORDER_STATE(OrderGetInteger(ORDER_TIME_EXPIRATION));
   return "";   
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
   return IntegerToString(PositionGetInteger(POSITION_TIME));
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
   int size = OrdersTotal();
   string str = "", symbol;
   for(int i = 0; i < size; i++){
      if( i != 0) str += ";";
      symbol = PositionGetSymbol(i);
      str += PositionGetTiket(symbol) + ",";
      str += PositionGetTimeMSC(symbol) + ",";
      str += PositionGetTimeUpdate(symbol) + ",";
      str += PositionGetTimeUpdateMSC(symbol) + ",";
      str += PositionGetType(symbol) + ",";
      str += PositionGetMagic(symbol) + ",";
      str += PositionGetIdentifier(symbol) + ",";
      str += PositionGetReason(symbol) + ",";
      str += PositionGetVolume(symbol) + ",";
      str += PositionGetPriceOpen(symbol) + ",";
      str += PositionGetSL(symbol) + ",";
      str += PositionGetTP(symbol) + ",";
      str += PositionGetPriceCurrent(symbol) + ",";
      str += PositionGetProfit(symbol) + ",";
      str += PositonGetCommet(symbol) + ",";
      str += PositonGetExternalID(symbol);
   }
   return str;
}