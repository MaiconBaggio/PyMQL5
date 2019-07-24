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
      if(i != 0) result += ",";
      result += DoubleToString(Values[i], _Digits_);
   }
   return result;
}

string LongArrayToString(long &Values[], int sizeArray){
   string result = "";
   for(int i = 0; i < sizeArray; i++){
      if(i != 0) result += ",";
      result += IntegerToString(Values[i], _Digits_);
   }
   return result;
}

////////////////////////////////////////////////////////////////////////////////////////////
// CopyTicks
////////////////////////////////////////////////////////////////////////////////////////////
string CopyTicksToString(string symbol, ulong from, uint count){
   MqlTick ticks[];
   int sizeTicks = CopyTicks(symbol, ticks, COPY_TICKS_TRADE, from, count);
   return MqlTickToString(ticks, sizeTicks);
}

string CopyTicksRangeToString(string symbol, ulong from, ulong count){
   MqlTick ticks[];
   int sizeTicks = CopyTicksRange(symbol, ticks, COPY_TICKS_TRADE, from, count);
   return MqlTickToString(ticks, sizeTicks);
}

////////////////////////////////////////////////////////////////////////////////////////////
// CopyRates
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


////////////////////////////////////////////////////////////////////////////////////////////
// CopyOpen
////////////////////////////////////////////////////////////////////////////////////////////
string CopyOpenToString(string symbol, ENUM_TIMEFRAMES timeframe, int start_pos, int count){
   double Values[];
   int sizeCopy = CopyOpen(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyOpenTCToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, int count){
   double Values[];
   int sizeCopy = CopyOpen(symbol, timeframe, start_time, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyOpenTTToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time,  datetime stop_time){
   double Values[];
   int sizeCopy = CopyOpen(symbol, timeframe, start_time, stop_time, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}


////////////////////////////////////////////////////////////////////////////////////////////
// CopyHigh
////////////////////////////////////////////////////////////////////////////////////////////
string CopyHighToString(string symbol, ENUM_TIMEFRAMES timeframe, int start_pos, int count){
   double Values[];
   int sizeCopy = CopyHigh(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyHighTCToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, int count){
   double Values[];
   int sizeCopy = CopyHigh(symbol, timeframe, start_time, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyHighTTToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, datetime stop_time){
   double Values[];
   int sizeCopy = CopyHigh(symbol, timeframe, start_time, stop_time, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}


////////////////////////////////////////////////////////////////////////////////////////////
// CopyLow
////////////////////////////////////////////////////////////////////////////////////////////
string CopyLowToString(string symbol, ENUM_TIMEFRAMES timeframe, int start_pos, int count){
   double Values[];
   int sizeCopy = CopyLow(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyLowTCToString(string symbol, ENUM_TIMEFRAMES timeframe,  datetime start_time, int count){
   double Values[];
   int sizeCopy = CopyLow(symbol, timeframe, start_time, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyLowTTToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, datetime stop_time){
   double Values[];
   int sizeCopy = CopyLow(symbol, timeframe, start_time, stop_time, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}


////////////////////////////////////////////////////////////////////////////////////////////
// CopyClose
////////////////////////////////////////////////////////////////////////////////////////////
string CopyCloseToString(string symbol, ENUM_TIMEFRAMES timeframe, int start_pos, int count){
   double Values[];
   int sizeCopy = CopyClose(symbol, timeframe, start_pos, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyCloseTCToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, int count){
   double Values[];
   int sizeCopy = CopyClose(symbol, timeframe, start_time, count, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

string CopyCloseTTToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, datetime stop_time){
   double Values[];
   int sizeCopy = CopyClose(symbol, timeframe, start_time, stop_time, Values);
   return DoubleArrayToString(Values, sizeCopy);    
}

////////////////////////////////////////////////////////////////////////////////////////////
// CopyVolume
////////////////////////////////////////////////////////////////////////////////////////////
string CopyVolumeToString(string symbol, ENUM_TIMEFRAMES timeframe, int start_pos, int count){
   long Values[];
   int sizeCopy = CopyRealVolume(symbol, timeframe, start_pos, count, Values);
   return LongArrayToString(Values, sizeCopy);    
}

string CopyVolumeTCToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, int count){
   long Values[];
   int sizeCopy = CopyRealVolume(symbol, timeframe, start_time, count, Values);
   return LongArrayToString(Values, sizeCopy);    
}

string CopyVolumeTTToString(string symbol, ENUM_TIMEFRAMES timeframe, datetime start_time, datetime stop_time){
   long Values[];
   int sizeCopy = CopyRealVolume(symbol, timeframe, start_time, stop_time, Values);
   return LongArrayToString(Values, sizeCopy);    
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
   return IntegerToString(iRealVolume(symbol, timeframe, shift)); 
}