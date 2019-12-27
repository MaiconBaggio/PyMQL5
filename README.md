# PyMQL5

 O PyMQL5 é uma API que realiza a conexão entre Python3 e o Metatrader5 através de socket UDP.

------------

## Instalar

**Python3**:
```python
pip install PyMQL5
```
ou
```python
python setup.py install
```
**Metatrader5**:
Execute o expert advisor API.ex5

###  Exemplo de uso
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
- [**TimeSeries**](Docs/TimeSeries.md)
	- [iOpen](Docs/TimeSeries.md#iOpen)  - Retorna o preço de abertura de um Candle .
	- [iHigh](Docs/TimeSeries.md#iHigh) - Retorna o preço máximo de um Candle.
	- [iLow](Docs/TimeSeries.md#iLow) - Retorna o preço mínimo de um  Candle.
	- [iClose](Docs/TimeSeries.md#iClose) - Retorna o preço de fechamento de um Candle.
	- [iTime](Docs/TimeSeries.md#iTime) - Retorna date e hora de um Candle.
	- [iVolume](Docs/TimeSeries.md#iVolume) - Retorna o volume de um Candle.
	- [CopyRates](Docs/TimeSeries.md#CopyRates) - Retorna um array do tipo MQLRates(Candles), com parâmetros determinados.
	- [CopyOpen](Docs/TimeSeries.md#CopyOpen) - Retorna um array do tipo double com os preços de abertura dos candles,  com parâmetros determinados.
	- [CopyHigh](Docs/TimeSeries.md#CopyHigh) - Retorna um array do tipo double com os preços de máximos dos candles,  com parâmetros determinados.
	- [CopyLow](Docs/TimeSeries.md#CopyLow) - Retorna um array do tipo double com os preços de mínimos dos candles,  com parâmetros determinados.
	- [CopyClose](Docs/TimeSeries.md#CopyClose) - Retorna um array do tipo double com os preços de fechamento dos candles,  com parâmetros determinados.
	- [CopyVolume](Docs/TimeSeries.md#CopyVolume) - Retorna um array do tipo ulong com os volume dos candles,  com parâmetros determinados.
	- [CopyTicks](Docs/TimeSeries.md#CopyTicks) - Retorna um array do tipo MQLTick dos ticks(Times And Trades), com numero do tick de inicio e quantidade especificados.
	- [CopyTicksRange](Docs/TimeSeries.md#CopyTicksRange) - Retorna um array do tipo MQLTick dos ticks(Times And Trades), com um range de data e horário especificado.
- [**Trade**](Docs/Trade.md)
	- [Buy](Docs/Trade.md#Buy)  - Abre uma posição comprada com parâmetros determinados.
	- [Sell](Docs/Trade.md#Sell) - Abre uma posição vendida com parâmetros determinados
	- [BuyLimit](Docs/Trade.md#BuyLimit) - Coloca a ordem pendente do tipo Buy Limit com parâmetros determinados
	- [SellLimit](Docs/Trade.md#SellLimit) - Coloca a ordem pendente do tipo Sell Limit com parâmetros determinados
	- [BuyStop](Docs/Trade.md#BuyStop)  - Coloca a ordem pendente do tipo Buy Stop com parâmetros determinados
	- [SellStop](Docs/Trade.md#SellStop) - Coloca a ordem pendente do tipo Sell Stop com parâmetros determinados.
	- [OrderDelete](Docs/Trade.md#OrderDelete) - Exclui a ordem pendente pelo bilhete(ticket).
	- [CancelAllOrder](Docs/Trade.md#CancelAllOrder) - Exclui todas as ordens pendentes.
	- [PositionCloseSymbol](Docs/Trade.md#PositionCloseSymbol) - Fecha a posição segundo o símbolo especificado.
	- [PositionCloseTicket](Docs/Trade.md#PositionCloseTicket) - Fecha a posição segundo o bilhete(ticket) especificado.
	- [PositionClosePartial](Docs/Trade.md#PositionClosePartial) - Fecha parte da posição cujo o bilhete é especificado.
	- [PositionModifySymbol](Docs/Trade.md#PositionModifySymbol) - Altera os parâmetros da posição segundo quer o símbolo da posição
	- [PositionModifyTicket](Docs/Trade.md#PositionModifyTicket) -Altera os parâmetros da posição segundo quer o bilhete(ticket) da posição.
	- [CancelAllPositon](Docs/Trade.md#CancelAllPositon) - Fecha todas as posições.
	- [SetEAMagicNumber](Docs/Trade.md#SetEAMagicNumber) - Define a ID do expert
- [**Constantes de Negociação**](Docs/ConstantesNegociacao.md)
	- [PositionsTotal](Docs/ConstantesNegociacao.md#PositionsTotal) - Retorna o número de posições em aberto.
	- [PositionAll](Docs/ConstantesNegociacao.md#PositionAll) - Retorna um array com todas as posições abertas, com as suas propriedades respectivamente.
	- [OrdersTotal](Docs/ConstantesNegociacao.md#OrdersTotal) - Retorna o número de ordens pendentes.
	- [OrderAll](Docs/ConstantesNegociacao.md#OrderAll) - Retorna um array com todas as ordens pendentes, com as suas propriedades respectivamente.
	- [HistoryDealTotalDay](Docs/ConstantesNegociacao.md#HistoryDealTotalDay) - Retorna o numero total de transações do dia.
	- [HistoryDealTotal](Docs/ConstantesNegociacao.md#HistoryDealTotal) - Retorna o numero total de  transações de um range com data horário especificado.
	- [HistoryDealAllDay](Docs/ConstantesNegociacao.md#HistoryDealAllDay) - Retorna um array com todas as transações do dia atual,  com as suas propriedades respectivamente.
	- [HistoryDealAll](Docs/ConstantesNegociacao.md#HistoryDealAll)- Retorna um array com todas as transações de um range com data e horário especificado,  com as suas propriedades respectivamente.
- [**Informações**](Docs/Info.md)
	- [AccountInfoAll](Docs/Info.md#AccountInfoAll)  - Retorna um dictionary com informações de conta.
	- [OptionInfo](Docs/Info.md#OptionInfo)  - Retorna um dictionary com informações de uma opção.