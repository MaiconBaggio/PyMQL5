#include "TimeSeries.mqh"
#include "Trade.mqh"
//#include "ConstantesNegociacao.mqh"

#define command 0

string Parse(string str){
   string result[];
   int sizeSplit = StringSplit(str, 44, result);
   
   
   if(sizeSplit == 4){
      
      if(result[command] == "iopen")
         return iOpenToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]));
      if(result[command] == "ihigh")
         return iHighToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]));   
      if(result[command] == "ilow")
         return iLowToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]));      
      if(result[command] == "iclose")
         return iCloseToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]));      
      if(result[command] == "itime")
         return iTimeToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]));      
      if(result[command] == "ivolume")
         return iVolumeToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]));   
   }   
   
   if(sizeSplit == 5){
      if(result[command] == "copyrates")
         return CopyRatesToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]), (int)StringToInteger(result[4]));
      if(result[command] == "copyratesTC")
         return CopyRatesTCToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), (int)StringToInteger(result[4]));   
      if(result[command] == "copyratesTT")
         return CopyRatesTTToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), StringToTime(result[4]));   
   }
   
   if(sizeSplit == 7){
      if(result[command] == "buy")
         return Buy(result[1], StringToDouble(result[2]), StringToDouble(result[3]), StringToDouble(result[4]), StringToDouble(result[5]), result[6]);
      if(result[command] == "sell")
         return Sell(result[1], StringToDouble(result[2]), StringToDouble(result[3]), StringToDouble(result[4]), StringToDouble(result[5]), result[6]);
      if(result[command] == "buylimit")
         return BuyLimit(result[1], StringToDouble(result[2]), StringToDouble(result[3]), StringToDouble(result[4]), StringToDouble(result[5]), result[6]);
      if(result[command] == "selllimit")
         return SellLimit(result[1], StringToDouble(result[2]), StringToDouble(result[3]), StringToDouble(result[4]), StringToDouble(result[5]), result[6]);
      if(result[command] == "buystop")
         return BuyStop(result[1], StringToDouble(result[2]), StringToDouble(result[3]), StringToDouble(result[4]), StringToDouble(result[5]), result[6]);
      if(result[command] == "sellstop")
         return SellStop(result[1], StringToDouble(result[2]), StringToDouble(result[3]), StringToDouble(result[4]), StringToDouble(result[5]), result[6]);               
   }
  
   Print(sizeSplit);    
   return "";  
}


ENUM_TIMEFRAMES StringToTimeFrames(string str){
   if(str == "PERIOD_M1") return PERIOD_M1;
   if(str == "PERIOD_M2") return PERIOD_M2;
   if(str == "PERIOD_M3") return PERIOD_M3;
   if(str == "PERIOD_M4") return PERIOD_M4;
   if(str == "PERIOD_M5") return PERIOD_M5;
   if(str == "PERIOD_M6") return PERIOD_M6;
   if(str == "PERIOD_M10") return PERIOD_M10;
   if(str == "PERIOD_M12") return PERIOD_M12;
   if(str == "PERIOD_M15") return PERIOD_M15;
   if(str == "PERIOD_M20") return PERIOD_M20;
   if(str == "PERIOD_M30") return PERIOD_M30;
   if(str == "PERIOD_H1") return PERIOD_H1;
   if(str == "PERIOD_H2") return PERIOD_H2;
   if(str == "PERIOD_H3") return PERIOD_H3;
   if(str == "PERIOD_H4") return PERIOD_H4;
   if(str == "PERIOD_H6") return PERIOD_H6;
   if(str == "PERIOD_H8") return PERIOD_H8;
   if(str == "PERIOD_H12") return PERIOD_H12;
   if(str == "PERIOD_D1") return PERIOD_D1;
   if(str == "PERIOD_W1") return PERIOD_W1;
   if(str == "PERIOD_MN1") return PERIOD_MN1;   
   return PERIOD_CURRENT;
}