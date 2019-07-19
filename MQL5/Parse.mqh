#include "TimeSeries.mqh"
#include "Trade.mqh"
#include "ConstantesNegociacao.mqh"

#define command 0

string Parse(string str){
   string result[];
   int sizeSplit = StringSplit(str, 44, result);
   
   
   if(sizeSplit == 1){
   
      if(result[command] == "orderstotal")
         return OrdersTotalToString();
    
      if(result[command] == "orderall")
         return OrderAll();
    
      if(result[command] == "positionstotal")
         return PositionsTotalToString();
   
      if(result[command] == "positionall")
         return PositionAll();
         
      if(result[command] == "accountinfoall") 
         return AccountInfoAll();  
         
      if(result[command] == "historydealtotalday")   
         return IntegerToString(HistoryDealGetTotalDay());
         
      if(result[command] == "historydealallday")   
         return HistoryDealAllDay();   
   }
   
   
   if(sizeSplit == 3){
      if(result[command] == "historydealtotal")
         return IntegerToString(HistoryDealGetTotal(StringToTime(result[1]), StringToTime(result[2])));
      
      if(result[command] == "historydealall")
         return HistoryDealAll(StringToTime(result[1]), StringToTime(result[2]));
      
      if(result[command] == "ordergettimestup")
         return OrderGetTimeSetup(StringToInteger(result[1]));
      if(result[command] == "ordergettype")
         return OrderGetType(StringToInteger(result[1]));  
      if(result[command] == "ordergetstate")
         return OrderGetState(StringToInteger(result[1]));  
                       
   }
   
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
      
      if(result[command] == "copyticks")
         return CopyTicksToString(result[1], StringToTime(result[2]), (int)StringToInteger(result[3]));
      if(result[command] == "copyticksrange")
         return CopyTicksRangeToString(result[1], StringToTime(result[2]), StringToTime(result[3]));     
   }   
   
   if(sizeSplit == 5){
      if(result[command] == "copyrates")
         return CopyRatesToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]), (int)StringToInteger(result[4]));
      if(result[command] == "copyratesTC")
         return CopyRatesTCToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), (int)StringToInteger(result[4]));   
      if(result[command] == "copyratesTT")
         return CopyRatesTTToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), StringToTime(result[4]));   
         
     
      if(result[command] == "copyopen")
         return CopyOpenToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]), (int)StringToInteger(result[4]));
      if(result[command] == "copyopenTC")
         return CopyOpenTCToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), (int)StringToInteger(result[4])); 
      if(result[command] == "copyopenTT")
         return CopyOpenTTToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), StringToTime(result[4]));   
         
      if(result[command] == "copyhigh")
         return CopyHighToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]), (int)StringToInteger(result[4]));
      if(result[command] == "copyhighTC")
         return CopyHighTCToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), (int)StringToInteger(result[4])); 
      if(result[command] == "copyhighTT")
         return CopyHighTTToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), StringToTime(result[4]));      
         
      if(result[command] == "copylow")
         return CopyLowToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]), (int)StringToInteger(result[4]));
      if(result[command] == "copylowTC")
         return CopyLowTCToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), (int)StringToInteger(result[4])); 
      if(result[command] == "copylowTT")
         return CopyHighTTToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), StringToTime(result[4]));         
     
      if(result[command] == "copyclose")
         return CopyCloseToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]), (int)StringToInteger(result[4]));
      if(result[command] == "copycloseTC")
         return CopyCloseTCToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), (int)StringToInteger(result[4])); 
      if(result[command] == "copycloseTT")
         return CopyCloseTTToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), StringToTime(result[4]));   
         
      if(result[command] == "copyvolume")
         return CopyVolumeToString(result[1], StringToTimeFrames(result[2]), (int)StringToInteger(result[3]), (int)StringToInteger(result[4]));
      if(result[command] == "copyvolumeTC")
         return CopyVolumeTCToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), (int)StringToInteger(result[4])); 
      if(result[command] == "copyvolumeTT")
         return CopyVolumeTTToString(result[1], StringToTimeFrames(result[2]), StringToTime(result[3]), StringToTime(result[4]));       
          
         
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