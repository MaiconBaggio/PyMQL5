# PyMQL5

 O PyMQL5 é uma API que realiza a conexão entre Python3 e o Metatrader5 através de socket TCP.

------------

## Como usar


Execute no Metatrader5 o expert advisor API.ex5


###  Exemplo
```python
from PyMQL5 import PyMQL5
mql5 = PyMQL5()

fechamento = mql5.iClose("PETR4", "M5", 0)

# Se o valor de retorno for None ocorreu um erro com a conexão com MetaTrader5
if fechamento != None:
	print("Ultimo preço de PETR4: ", fechamento)
else:
	print("Não a Conexão com MetaTrader5 verifique!")
```



## Docs
- [TimeSeries](Docs/TimeSeries.md)
	- [iOpen](Docs/TimeSeries.md#iOpen)  
	- [iHigh](Docs/TimeSeries.md#iHigh)
	- [iLow](Docs/TimeSeries.md#iLow)
	- [iClose](Docs/TimeSeries.md#iClose)
	- [iTime](Docs/TimeSeries.md#iTime)
	- [iVolume](Docs/TimeSeries.md#iVolume)
	- [CopyRates](Docs/TimeSeries.md#CopyRates)
	- [CopyOpen](Docs/TimeSeries.md#CopyOpen)
	- [CopyHigh](Docs/TimeSeries.md#CopyHigh)
	- [CopyLow](Docs/TimeSeries.md#CopyLow)
	- [CopyClose](Docs/TimeSeries.md#CopyClose)
	- [CopyVolume](Docs/TimeSeries.md#CopyVolume)
- [Trade](Docs/Trade.md)
	- [Buy](Docs/Trade.md#Buy)
	- [Sell](Docs/Trade.md#Sell)
	- [BuyLimit](Docs/Trade.md#BuyLimit)
	- [SellLimit](Docs/Trade.md#SellLimit)
	- [BuyStop](Docs/Trade.md#BuyStop)
	- [SellStop](Docs/Trade.md#SellStop)
	- [PositionsTotal](Docs/Trade.md#PositionsTotal)
	- [PositionAll](Docs/Trade.md#PositionAll)
	- [OrdersTotal](Docs/Trade.md#OrdersTotal)
	- [OrderAll](Docs/Trade.md#OrderAll)
	- [AccountInfoAll](Docs/Trade.md#AccountInfoAll)
	- [HistoryDealTotalDay](Docs/Trade.md#HistoryDealTotalDay)
	- [HistoryDealTotal](Docs/Trade.md#HistoryDealTotal)
	- [HistoryDealAllDay](Docs/Trade.md#HistoryDealAllDay)
	- [HistoryDealAll](Docs/Trade.md#HistoryDealAll)