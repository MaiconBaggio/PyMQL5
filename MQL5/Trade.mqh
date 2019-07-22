#include <Trade\Trade.mqh>
 
CTrade *trade = new CTrade();
 
string Buy(string symbol, double volume, double price, double sl, double tp, string comment){
   if(trade.Buy(volume, symbol, price, sl, tp, comment)){
      return IntegerToString(trade.ResultOrder());
   }
   return "-1";
}
 
string Sell(string symbol, double volume, double price, double sl, double tp, string comment){
   if(trade.Sell(volume, symbol, price, sl, tp, comment)){
      return IntegerToString(trade.ResultOrder());
   }
   return "-1";
}
 
string BuyLimit(string symbol, double volume, double price, double sl, double tp, string comment){
   if(trade.BuyLimit(volume, price, symbol, sl, tp, 0, 0,comment)){
      return IntegerToString(trade.ResultOrder());
   }
   return "-1";
}

string SellLimit(string symbol, double volume, double price, double sl, double tp, string comment){
   if(trade.SellLimit(volume, price, symbol, sl, tp, 0, 0,comment)){
      return IntegerToString(trade.ResultOrder());
   }
   return "-1";
}

string BuyStop(string symbol, double volume, double price, double sl, double tp, string comment){
   if(trade.BuyStop(volume, price, symbol, sl, tp, 0, 0, comment)){
      return IntegerToString(trade.ResultOrder());
   }
   return "-1";
}

string SellStop(string symbol, double volume, double price, double sl, double tp, string comment){
   if(trade.SellStop(volume, price, symbol, sl, tp, 0, 0, comment)){
      return IntegerToString(trade.ResultOrder());
   }
   return "-1";
}

string OrderDelete(ulong ticket){
   return trade.OrderDelete(ticket) ? "1" : "0";   
}


string PositionCloseSymbol(string symbol){
   return trade.PositionClose(symbol) ? "1" : "0";
}

string PositionCloseTicket(ulong ticket){
   return trade.PositionClose(ticket) ? "1" : "0";
}

string PositionClosePartial(ulong ticket, double volume){
   return trade.PositionClosePartial(ticket, volume) ? "1" : "0";
}

string PositionModifySymbol(string symbol, double sl, double tp){
   return trade.PositionModify(symbol, sl, tp) ? "1" : "0";
}

string PositionModifyTicket(ulong ticket, double sl, double tp){
   return trade.PositionModify(ticket, sl, tp) ? "1" : "0" ; 
}

string SetEAMagicNumber(ulong number){
   trade.SetExpertMagicNumber(number);
   return "1";
}

string CancelAllPosition(){
   string str = "1";
   while(PositionsTotal() > 0)
      if(!trade.PositionClose(PositionGetSymbol(0)))
         str = "0"; 
   return str;
}

string CancelAllOrder(){
   string str = "1";
   while(OrdersTotal() > 0)
      if(!trade.OrderDelete(OrderGetTicket(0)))
         str = "0";
   return str;     
}