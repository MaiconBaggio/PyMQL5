///////////////////////////////////////////////////////////////////////////////////
//    Account Info
///////////////////////////////////////////////////////////////////////////////////
string getENUM_ACCOUNT_TRADE_MODE(ulong value){
   if(value == ACCOUNT_TRADE_MODE_DEMO)
      return "ACCOUNT_TRADE_MODE_DEMO";   
   if(value == ACCOUNT_TRADE_MODE_CONTEST)
      return "ACCOUNT_TRADE_MODE_CONTEST";  
   return "ACCOUNT_TRADE_MODE_REAL";     
}

string getENUM_ACCOUNT_STOPOUT_MODE(ulong value){
   if(value == ACCOUNT_STOPOUT_MODE_PERCENT)
      return "ACCOUNT_STOPOUT_MODE_PERCENT";
   return "ACCOUNT_STOPOUT_MODE_MONEY";
}

string getENUM_ACCOUNT_MARGIN_MODE(ulong value){
   if(value == ACCOUNT_MARGIN_MODE_RETAIL_NETTING)
      return "ACCOUNT_MARGIN_MODE_RETAIL_NETTING";
   if(value == ACCOUNT_MARGIN_MODE_EXCHANGE)
      return "ACCOUNT_MARGIN_MODE_EXCHANGE";
   return "ACCOUNT_MARGIN_MODE_RETAIL_HEDGING";      
}  


string AccountInfoGetLogin(){
   return IntegerToString(AccountInfoInteger(ACCOUNT_LOGIN));
}

string AccountInfoGetTradeMode(){
   return getENUM_ACCOUNT_TRADE_MODE(AccountInfoInteger(ACCOUNT_TRADE_MODE));
}

string AccountInfoGetLeverage(){
   return IntegerToString(AccountInfoInteger(ACCOUNT_LEVERAGE));
}

string AccountInfoGetLimitOrders(){
   return IntegerToString(AccountInfoInteger(ACCOUNT_LIMIT_ORDERS));
}

string AccountInfoGetMarginSOMode(){
   return getENUM_ACCOUNT_STOPOUT_MODE(AccountInfoInteger(ACCOUNT_MARGIN_SO_MODE));
}

string AccountInfoGetTradeAllowed(){
   return IntegerToString(AccountInfoInteger(ACCOUNT_TRADE_ALLOWED));
}

string AccountInfoGetTradeExpert(){
   return IntegerToString(AccountInfoInteger(ACCOUNT_TRADE_EXPERT));
}

string AccountInfoGetMarginMode(){
   return getENUM_ACCOUNT_MARGIN_MODE(AccountInfoInteger(ACCOUNT_MARGIN_MODE));
}

string AccountInfoGetCurrencyDigits(){
   return IntegerToString(AccountInfoInteger(ACCOUNT_CURRENCY_DIGITS));
}

string AccountInfoGetBalance(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_BALANCE));
}

string AccountInfoGetCredit(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_CREDIT));
}

string AccountInfoGetProfit(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_PROFIT));
}

string AccountInfoGetEquity(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_EQUITY));
}

string AccountInfoGetMargin(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_MARGIN));
}

string AccountInfoGetMarginFree(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_MARGIN_FREE));
}

string AccountInfoGetMarginLevel(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_MARGIN_LEVEL));
}

string AccountInfoGetMarginSOCall(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_MARGIN_SO_CALL));
}

string AccountInfoGetMarginInitial(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_MARGIN_INITIAL));
}

string AccountInfoGetMarginMaintenance(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_MARGIN_MAINTENANCE));
}

string AccountInfoGetAssets(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_ASSETS));
}

string AccountInfoGetLiabilities(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_LIABILITIES));
}

string AccountInfoGetCommissionBlocked(){
   return DoubleToString(AccountInfoDouble(ACCOUNT_COMMISSION_BLOCKED));
}

string AccountInfoGetName(){
   return AccountInfoString(ACCOUNT_NAME);
}

string AccountInfoGetServer(){
   return AccountInfoString(ACCOUNT_SERVER);
}

string AccountInfoGetCurrency(){
   return AccountInfoString(ACCOUNT_CURRENCY);
}

string AccountInfoGetCompany(){
   return AccountInfoString(ACCOUNT_COMPANY);
}

string AccountInfoAll(){
   string str = AccountInfoGetLogin() + ",";
   str +=  AccountInfoGetTradeMode() + ",";
   str +=  AccountInfoGetLeverage() + ",";
   str +=  AccountInfoGetLimitOrders() + ",";
   str +=  AccountInfoGetMarginSOMode() + ",";
   str +=  AccountInfoGetTradeAllowed() + ",";
   str +=  AccountInfoGetTradeExpert() + ",";
   str +=  AccountInfoGetMarginMode() + ",";
   str +=  AccountInfoGetCurrencyDigits() + ",";
   str +=  AccountInfoGetBalance() + ",";
   str +=  AccountInfoGetCredit() + ",";
   str +=  AccountInfoGetProfit() + ",";
   str +=  AccountInfoGetEquity() + ",";
   str +=  AccountInfoGetMargin() + ",";
   str +=  AccountInfoGetMarginFree() + ",";
   str +=  AccountInfoGetMarginLevel() + ",";
   str +=  AccountInfoGetMarginSOCall() + ",";
   str +=  AccountInfoGetMarginInitial() + ",";
   str +=  AccountInfoGetMarginMaintenance() + ",";
   str +=  AccountInfoGetAssets() + ",";
   str +=  AccountInfoGetLiabilities() + ",";
   str +=  AccountInfoGetCommissionBlocked() + ",";
   str +=  AccountInfoGetName() + ",";
   str +=  AccountInfoGetServer() + ",";
   str +=  AccountInfoGetCurrency() + ",";
   str +=  AccountInfoGetCompany();
   return str;
}

///////////////////////////////////////////////////////////////////////////////////
//    Symbol Info
///////////////////////////////////////////////////////////////////////////////////
string getENUM_SYMBOL_OPTION_RIGHT(ulong value){
   if(value == SYMBOL_OPTION_RIGHT_CALL)
      return "SYMBOL_OPTION_RIGHT_CALL";
   return "SYMBOL_OPTION_RIGHT_PUT";   
}

string getENUM_SYMBOL_OPTION_MODE(ulong value){
   if(value == SYMBOL_OPTION_MODE_EUROPEAN)
      return "SYMBOL_OPTION_MODE_EUROPEAN";
   return "SYMBOL_OPTION_MODE_AMERICAN";      
}

string getENUM_DAY_OF_WEEK(ulong value){
   if(value == SUNDAY)
      return "SUNDAY";
   if(value == MONDAY)
      return "MONDAY";
   if(value == TUESDAY)
      return "TUESDAY";      
   if(value == WEDNESDAY)
      return "WEDNESDAY";
   if(value == THURSDAY)
      return "THURSDAY";
   if(value == FRIDAY)
      return "FRIDAY";
   return "SATURDAY";            
}

string getENUM_SYMBOL_TRADE_EXECUTION(ulong value){
   if(value == SYMBOL_TRADE_EXECUTION_REQUEST)
      return "SYMBOL_TRADE_EXECUTION_REQUEST";
   if(value == SYMBOL_TRADE_EXECUTION_INSTANT)
      return "SYMBOL_TRADE_EXECUTION_INSTANT";
   if(value == SYMBOL_TRADE_EXECUTION_MARKET)
      return "SYMBOL_TRADE_EXECUTION_MARKET";
   return "SYMBOL_TRADE_EXECUTION_EXCHANGE";         
}

string getENUM_SYMBOL_TRADE_MODE(ulong value){
   if(value == SYMBOL_TRADE_MODE_DISABLED)
      return "SYMBOL_TRADE_MODE_DISABLED";
   if(value == SYMBOL_TRADE_MODE_LONGONLY)
      return "SYMBOL_TRADE_MODE_LONGONLY";    
   if(value == SYMBOL_TRADE_MODE_SHORTONLY)
      return "SYMBOL_TRADE_MODE_SHORTONLY";
   if(value == SYMBOL_TRADE_MODE_CLOSEONLY)
      return "SYMBOL_TRADE_MODE_CLOSEONLY";      
   return "SYMBOL_TRADE_MODE_FULL";    
}

string SymbolGetTotal(){
   return IntegerToString(SymbolsTotal(false));
}

string SymbolGetSelect(string name, bool select){
   return SymbolSelect(name, select) ? "1" : "0";
}

string SymbolInfoAll(string symbol){
   string str = IntegerToString(SymbolInfoInteger(symbol , SYMBOL_SESSION_DEALS)) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_SESSION_BUY_ORDERS)) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_SESSION_SELL_ORDERS)) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_VOLUME)) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_VOLUMEHIGH)) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_VOLUMELOW)) + ",";
   str += TimeToString(SymbolInfoInteger(symbol , SYMBOL_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_DIGITS)) + ",";
   str += (SymbolInfoInteger(symbol , SYMBOL_SPREAD_FLOAT) ? "1" : "0") + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_SPREAD)) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_TICKS_BOOKDEPTH)) + ",";
   str += TimeToString(SymbolInfoInteger(symbol , SYMBOL_START_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
   str += TimeToString(SymbolInfoInteger(symbol , SYMBOL_EXPIRATION_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_TRADE_STOPS_LEVEL)) + ",";
   str += IntegerToString(SymbolInfoInteger(symbol , SYMBOL_TRADE_FREEZE_LEVEL)) + ",";
   str += getENUM_SYMBOL_TRADE_EXECUTION(SymbolInfoInteger(symbol , SYMBOL_TRADE_EXEMODE)) + ",";
   str += getENUM_DAY_OF_WEEK(SymbolInfoInteger(symbol , SYMBOL_SWAP_ROLLOVER3DAYS)) + ",";
   str += getENUM_SYMBOL_TRADE_MODE(SymbolInfoInteger(symbol , SYMBOL_OPTION_MODE)) + ",";
   str += getENUM_SYMBOL_OPTION_RIGHT(SymbolInfoInteger(symbol , SYMBOL_OPTION_RIGHT)) + ",";
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_BID)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_BIDHIGH)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_BIDLOW)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_ASK)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_ASKHIGH)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_ASKLOW)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_LAST)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_LASTHIGH)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_LASTLOW)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_VOLUME_REAL)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_VOLUMEHIGH_REAL)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_VOLUMELOW_REAL)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_OPTION_STRIKE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_POINT)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_VALUE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_VALUE_PROFIT)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_VALUE_LOSS)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_TICK_SIZE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_CONTRACT_SIZE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_ACCRUED_INTEREST)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_FACE_VALUE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_TRADE_LIQUIDITY_RATE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_VOLUME_MIN)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_VOLUME_MAX)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_VOLUME_STEP)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_VOLUME_LIMIT)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SWAP_LONG)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SWAP_SHORT)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_MARGIN_INITIAL)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_MARGIN_MAINTENANCE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_VOLUME)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_TURNOVER)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_INTEREST)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_BUY_ORDERS_VOLUME)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_SELL_ORDERS_VOLUME)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_OPEN)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_CLOSE)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_AW)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_PRICE_SETTLEMENT)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_PRICE_LIMIT_MIN)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_SESSION_PRICE_LIMIT_MAX)) + "," ;
   str += DoubleToString(SymbolInfoDouble(symbol, SYMBOL_MARGIN_HEDGED)) + "," ;
   str += SymbolInfoString(symbol, SYMBOL_BASIS) + ",";
   str += SymbolInfoString(symbol, SYMBOL_CURRENCY_BASE) + ",";
   str += SymbolInfoString(symbol, SYMBOL_CURRENCY_PROFIT) + ",";
   str += SymbolInfoString(symbol, SYMBOL_CURRENCY_MARGIN) + ",";
   str += SymbolInfoString(symbol, SYMBOL_BANK) + ",";
   str += SymbolInfoString(symbol, SYMBOL_DESCRIPTION) + ",";
   str += SymbolInfoString(symbol, SYMBOL_FORMULA) + ",";
   str += SymbolInfoString(symbol, SYMBOL_ISIN) + ",";
   str += SymbolInfoString(symbol, SYMBOL_PAGE) + ",";
   str += SymbolInfoString(symbol, SYMBOL_PATH);
   return str;
}

///////////////////////////////////////////////////////////////////////////////////
//    Option Info
///////////////////////////////////////////////////////////////////////////////////

string OptionInfo(string symbol){
   string str = "";
   str = getENUM_SYMBOL_OPTION_MODE(SymbolInfoInteger(symbol ,SYMBOL_OPTION_MODE)) + ",";
   str += getENUM_SYMBOL_OPTION_RIGHT(SymbolInfoInteger(symbol ,SYMBOL_OPTION_RIGHT)) + ",";
   str += TimeToString(SymbolInfoInteger(symbol , SYMBOL_START_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
   str += TimeToString(SymbolInfoInteger(symbol , SYMBOL_EXPIRATION_TIME), TIME_DATE | TIME_MINUTES | TIME_SECONDS) + ",";
   str += DoubleToString(SymbolInfoDouble(symbol ,SYMBOL_OPTION_STRIKE)) + ",";   
   str += DoubleToString(SymbolInfoDouble(symbol ,SYMBOL_BID)) + ",";
   str += DoubleToString(SymbolInfoDouble(symbol ,SYMBOL_ASK)) + ",";
   str += DoubleToString(SymbolInfoDouble(symbol ,SYMBOL_LAST)) + ",";
   str += DoubleToString(SymbolInfoDouble(symbol ,SYMBOL_VOLUME_REAL));

   return str;
}