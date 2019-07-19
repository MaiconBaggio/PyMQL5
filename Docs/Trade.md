# PyMQL5

### Trade


####  [Buy](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradebuy)

------------
**Abre uma posição comprada com os parâmetros determinados.**

*Retorna -1 se ocorrer algum erro de paramentos , caso contario retorna o numero do ticket (número da ordem)*

Buy(Symbol, Volume, Price, SL, TP, Comment)
 

Exemplo:
```python
mql5.Buy("PETR4",  100, 27.50, 27.01, 27.98, "Qualquer comentario")
```

####  [Sell](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradesell)

------------
**Abre uma posição vendida com os parâmetros determinados.**

*Retorna -1 se ocorrer algum erro de paramentos , caso contario retorna o numero do ticket (número da ordem)*

Sell(Symbol, Volume, Price, SL, TP, Comment)
 

Exemplo:
```python
mql5.Sell("PETR4",  100, 27.50, 27.98, 27.01 , "Qualquer comentario")
```

####  [BuyLimit](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradebuylimit)

------------
**Coloca a ordem pendente do tipo Buy Limit (compra no preço menor do que o preço atual de mercado) com parâmetros determinados .**

*Retorna -1 se ocorrer algum erro de paramentos , caso contario retorna o numero do ticket (número da ordem)*

BuyLimit(Symbol, Volume, Price, SL, TP, Comment)
 

Exemplo:
```python
mql5.BuyLimit("PETR4",  100, 27.50, 27.01, 27.98, "Qualquer comentario")
```

####  [SellLimit](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradeselllimit)

------------
**Coloca a ordem pendente do tipo Sell Limit (vender pelo preço maior do que o preço atual de mercado) com parâmetros determinados.**

*Retorna -1 se ocorrer algum erro de paramentos , caso contario retorna o numero do ticket (número da ordem)*

SellLimit(Symbol, Volume, Price, SL, TP, Comment)

Exemplo:
```python
mql5.SellLimit("PETR4",  100, 27.50,  27.98, 27.01, "Qualquer comentario")
```

####  [BuyStop](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradebuystop)

------------
**Coloca a ordem pendente do tipo Buy Stop (compra no preço maior do que o preço atual de mercado) com parâmetros determinados.**

*Retorna -1 se ocorrer algum erro de paramentos , caso contario retorna o numero do ticket (número da ordem)*

BuyStop(Symbol, Volume, Price, SL, TP, Comment)
 

Exemplo:
```python
mql5.BuyStop("PETR4",  100, 27.50, 27.01, 27.98, "Qualquer comentario")
```

####  [SellStop](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradesellstop)

------------
**Coloca a ordem pendente do tipo Sell Stop (vender pelo preço mais baixo do que o preço atual de mercado) com parâmetros determinados.**

*Retorna -1 se ocorrer algum erro de paramentos , caso contario retorna o numero do ticket (número da ordem)*

SellStop(Symbol, Volume, Price, SL, TP, Comment)
 

Exemplo:
```python
mql5.SellStop("PETR4",  100, 27.50,  27.98, 27.01, "Qualquer comentario")
```

####  [PositionsTotal](https://www.mql5.com/en/docs/trading/positionstotal)

------------
**Retorna o número de posições em aberto.**

*Valor do tipo **int**.*

PositionsTotal()
 

Exemplo:
```python
mql5.PositionsTotal()
```

####  [PositionAll](https://www.mql5.com/pt/docs/constants/tradingconstants/positionproperties)

------------
**Retorna um array com todas as posições em aberto**


PositionAll()
 

Exemplo:
```python
mql5.PositionAll()
```

####  [OrdersTotal](https://www.mql5.com/pt/docs/trading/orderstotal)

------------
**Retorna o número de ordens.**

*Valor do tipo **Double**.*

OrdersTotal()
 

Exemplo:
```python
mql5.OrdersTotal()
```

####  [OrderAll](https://www.mql5.com/pt/docs/constants/tradingconstants/orderproperties)

------------
**Retorna um array com todas as ordens pendentes**


OrderAll()
 

Exemplo:
```python
mql5.OrderAll()
```

####  [AccountInfoAll](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation)

------------
**Para obter informações sobre a conta atual.**


AccountInfoAll()
 

Exemplo:
```python
mql5.AccountInfoAll()
```

####  [HistoryDealTotalDay](https://www.mql5.com/pt/docs/trading/historydealstotal)

------------
**Retorna o número de ordens e negócio no histórico do dia.**


HistoryDealTotalDay()
 

Exemplo:
```python
mql5.HistoryDealTotalDay()
```

####  [HistoryDealTotal](https://www.mql5.com/pt/docs/trading/historydealstotal)

------------
**Retorna o número de ordens e negócio no histórico para um período de tempo especificado.**


HistoryDealTotal(Start_Time, Stop_Time)
 

Exemplo:
```python
mql5.HistoryDealTotal("2019.07.16 10:25:10", "2019.07.18 12:00:00")
```

####  [HistoryDealAllDay](https://www.mql5.com/pt/docs/constants/tradingconstants/dealproperties)

------------
**Retorna um array com todas as ordens e negócio no histórico do dia**


HistoryDealAllDay()
 

Exemplo:
```python
mql5.HistoryDealAllDay()
```

####  [HistoryDealAll](https://www.mql5.com/pt/docs/constants/tradingconstants/dealproperties)

------------
**Retorna um array com todas as ordens e negócio no histórico para um período de tempo especificado.**


HistoryDealAll(Start_Time, Stop_Time)
 

Exemplo:
```python
mql5.HistoryDealAll("2019.07.16 10:25:10", "2019.07.18 12:00:00")
```