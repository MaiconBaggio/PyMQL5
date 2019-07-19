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