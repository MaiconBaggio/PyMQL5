int _Digits_ = 2;

string MqlTickToString(MqlTick &Ticks[], int sizeTicks){
   string result = "";
   for(int i = 0; i < sizeTicks; i++){
      if(i != 0) result += ";";         
      result += TimeToString(Ticks[i].time, TIME_DATE|TIME_MINUTES|TIME_SECONDS) + ",";
      result += DoubleToString(Ticks[i].bid, _Digits_) + ",";
      result += DoubleToString(Ticks[i].ask, _Digits_) + ",";
      result += DoubleToString(Ticks[i].last, _Digits_) + ",";
      result += IntegerToString(Ticks[i].volume) + ",";   
      result += IntegerToString(Ticks[i].time_msc) + ",";
      result += IntegerToString(Ticks[i].flags)+ ",";
      result += DoubleToString(Ticks[i].volume_real, _Digits_);
   }   
   return result;
}

string MqlRatesToString(MqlRates &Rates[], int sizeArray){
   string result = "";
   for(int i = 0; i < sizeArray; i++){
      if(i != 0) result += ";";         
      result += TimeToString(Rates[i].time, TIME_DATE|TIME_MINUTES|TIME_SECONDS) + ",";
      result += DoubleToString(Rates[i].open, _Digits_) + ",";
      result += DoubleToString(Rates[i].high, _Digits_) + ",";
      result += DoubleToString(Rates[i].low, _Digits_) + ",";
      result += DoubleToString(Rates[i].close, _Digits_) + ",";
      result += IntegerToString(Rates[i].tick_volume) + ",";   
      result += IntegerToString(Rates[i].spread) + ",";
      result += IntegerToString(Rates[i].real_volume);
   }   
   return result;
}

string DoubleArrayToString(double &Values[], int sizeArray){
   string result = "";
   for(int i = 0; i < sizeArray; i++){
      if(i != 0) result += ";";
      result += DoubleToString(Values[i], _Digits_);
   }
   return result;
}

string CopyTicksToString(string symbol, uint flags, ulong from, uint count){
   MqlTick ticks[];
   int sizeTicks = CopyTicks(symbol, ticks, flags, from, count);
   return MqlTickToString(ticks, sizeTicks);
}

string CopyTicksRangeToString(string symbol, uint flags, ulong from, ulong count){
   MqlTick ticks[];
   int sizeTicks = CopyTicksRange(symbol, ticks, flags, from, count);
   return MqlTickToString(ticks, sizeTicks);
}

////////////////////////////////////////////////////////////////////////////////////////////
// TimeSeries Copys
////////////////////////////////////////////////////////////////////////////////////////////
string CopyRatesToString(string symbol, ENUM_TIMEFRAMES timeframe, int start_pos, int count){
   MqlRates rates[];
   int sizeCopy = CopyRates(symbol, timeframe, start_pos, count, rates);
   return MqlRatesToString(rates, sizeCopy);
}

string CopyRatesTCToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, int count){
   MqlRates rates[];
   int sizeCopy = CopyRates(symbol, timeframe, start_time, count, rates);
   return MqlRatesToString(rates, sizeCopy);
}

string CopyRatesTTToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, datetime stop_time){
   MqlRates rates[];
   int sizeCopy = CopyRates(symbol, timeframe, start_time, stop_time, rates);
   return MqlRatesToString(rates, sizeCopy);
}

string CopyOpenToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_pos, int count){
   double Values[];
   int sizeCopy = CopyOpen(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyHighToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_pos, int count){
   double Values[];
   int sizeCopy = CopyHigh(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}
string CopyLowToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_pos, int count){
   double Values[];
   int sizeCopy = CopyLow(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}


string CopyCloseToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_pos, int count){
   double Values[];
   int sizeCopy = CopyClose(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}


////////////////////////////////////////////////////////////////////////////////////////////
// TimeSeries i
////////////////////////////////////////////////////////////////////////////////////////////
string iOpenToString(string symbol, ENUM_TIMEFRAMES timeframe, int shift){
   return DoubleToString(iOpen(symbol, timeframe, shift), _Digits_); 
}

string iHighToString(string symbol, ENUM_TIMEFRAMES timeframe, int shift){
   return DoubleToString(iHigh(symbol, timeframe, shift), _Digits_); 
}

string iLowToString(string symbol, ENUM_TIMEFRAMES timeframe, int shift){
   return DoubleToString(iLow(symbol, timeframe, shift), _Digits_); 
}

string iCloseToString(string symbol, ENUM_TIMEFRAMES timeframe, int shift){
   return DoubleToString(iClose(symbol, timeframe, shift), _Digits_); 
}

string iTimeToString(string symbol, ENUM_TIMEFRAMES timeframe, int shift){
   return TimeToString(iTime(symbol, timeframe, shift)); 
}

string iVolumeToString(string symbol, ENUM_TIMEFRAMES timeframe, int shift){
   return IntegerToString(iVolume(symbol, timeframe, shift)); 
}