# PyMQL5

### Constantes de Negociação


####  [PositionsTotal](https://www.mql5.com/pt/docs/trading/positionstotal)

------------
**Retorna o número de posições abertas.**

PositionsTotal()

Exemplo:
```python
mql5.PositionsTotal()
```


####  [PositionAll](https://www.mql5.com/pt/docs/constants/tradingconstants/positionproperties)

------------
**Retorna um array do [tipo PropertiesPosition](#PropertiesPosition "PropertiesPosition") com todas as posições em aberto**

PositionAll()

Exemplo:
```python
mql5.PositionAll()
```

####  [OrdersTotal](https://www.mql5.com/pt/docs/trading/orderstotal)

------------
**Retorna o número de ordens pendentes.**

*Valor do tipo **Double**.*

OrdersTotal()
 

Exemplo:
```python
mql5.OrdersTotal()
```

####  [OrderAll](https://www.mql5.com/pt/docs/constants/tradingconstants/orderproperties)

------------
**Retorna um array do tipo  [tipo PropertiesOrder](#PropertiesOrder "PropertiesOrder") com todas as ordens pendentes**


OrderAll()
 

Exemplo:
```python
mql5.OrderAll()
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
**Retorna um array do  [tipo PropertiesDeal](#PropertiesDeal "PropertiesDeal")  com todas as ordens e negócio no histórico do dia**


HistoryDealAllDay()
 

Exemplo:
```python
mql5.HistoryDealAllDay()
```

####  [HistoryDealAll](https://www.mql5.com/pt/docs/constants/tradingconstants/dealproperties)

------------
**Retorna um array do  [tipo PropertiesDeal](#PropertiesDeal "PropertiesDeal") com todas as ordens e negócio no histórico para um período de tempo especificado.**


HistoryDealAll(Start_Time, Stop_Time)
 

Exemplo:
```python
mql5.HistoryDealAll("2019.07.16 10:25:10", "2019.07.18 12:00:00")
```

####  [PropertiesPosition](https://www.mql5.com/pt/docs/constants/tradingconstants/positionproperties)
------------
*O Tipo PropertiesPosition é um dictionary que tem o seguinte modelo (Propriedades de uma Posição):*
```python
{ 
	'TICKET': int, # Bilhete da posição. Um número exclusivo atribuído a cada posição.
	'TIME': date, # Hora de abertura de uma posição
	'TIME_MSC': int, # Posição de tempo de abertura em milissegundos desde 01.01.1970
	'TIME_UPDATE': int, # Posição de tempo de alteração em segundos desde 01.01.1970
	'TIME_UPDATE_MSC': int, # Posição de tempo de alteração em milissegundo desde 01.01.1970
	'TYPE':  ENUM_POSITION_TYPE, # Tipo de posição
	'MAGIC': int, # Número mágico de uma posição
	'IDENTIFIER': int, # Identificador de posição é um número único que é atribuído para toda nova posição aberta e não se altera
	'REASON':  ENUM_POSITION_REASON, # Razão para a abertura da posição
	'VOLUME': float, # Volume de uma posição
	'PRICE_OPEN': float, # Preço de abertura de uma posição
	'SL': float, # Nível de Stop Loss de uma posição aberta
	'TP': float, # Nível de Take Profit de uma posição aberta
	'PRICE_CURRENT': float, # Preço corrente do ativo de uma posição
	'PROFIT': float, # Lucro corrente
	'SYMBOL':  String, # Ativo (symbol) da posição
	'COMMENT': String, # Comentário de uma posição
	'EXTERNAL_ID': String # ID de posição no sistema externo de negociação (na bolsa de valores)
}
```
[ENUM_POSITION_TYPE](https://www.mql5.com/pt/docs/constants/tradingconstants/positionproperties#enum_position_type "ENUM_POSITION_TYPE")
[ENUM_POSITION_REASON](https://www.mql5.com/pt/docs/constants/tradingconstants/positionproperties#enum_position_reason "ENUM_POSITION_REASON")

####  [PropertiesOrder](https://www.mql5.com/pt/docs/constants/tradingconstants/orderproperties)
------------
*O Tipo PropertiesOrder é um dictionary que tem o seguinte modelo (Propriedades de uma Ordem):*
```python
{
	'TICKET': int, # Bilhete da ordem. Um número exclusivo atribuído a cada ordem
	'TIME_SETUP': date, # Hora de configuração de uma ordem
	'TYPE': ENUM_ORDER_TYPE, # Tipo de ordem
	'STATE': ENUM_ORDER_STATE, # Estado de uma ordem
	'TIME_EXPIRATION':  date, # Hora de expiração de uma ordem
	'TIME_DONE': date, # Hora de execução ou cancelamento de uma ordem
	'TIME_SETUP_MSC': int, # O tempo para colocar uma ordem de execução em milissegundos desde 01.01.1970
	'TIME_DONE_MSC': int, # Tempo de execução e cancelamento de ordens em milissegundos desde 01.01.1970
	'TYPE_FILLING': ENUM_ORDER_TYPE_FILLING, # Type de preenchimento de uma ordem
	'TYPE_TIME': ENUM_ORDER_TYPE_TIME, # tempo de duração de uma ordem
	'MAGIC': int, # ID de um Expert Advisor que colocou a ordem
	'POSITION_ID': int, # Identificador de posição que é definido para uma ordem tão logo ela é executada.
	'POSITION_BY_ID': int, # Identificador da posição oposta para as ordens do tipo
	'VOLUME_INITIAL': float, # Volume inicial de uma ordem
	'VOLUME_CURRENT': float, # Volume corrente de uma ordem
	'PRICE_OPEN': float, # Preço especificado na ordem
	'SL': float, # Valor de Stop Loss
	'TP': float, # Valor de Take Profit
	'PRICE_CURRENT': float, # O preço corrente do ativo de uma ordem
	'PRICE_STOPLIMIT': float, # O preço de ordem Limit para uma ordem StopLimit
	'SYMBOL': String, # Ativo (symbol) de uma ordem
	'COMMENT': String # Comentário sobre a ordem
}
```
[ENUM_ORDER_TYPE](https://www.mql5.com/pt/docs/constants/tradingconstants/orderproperties#enum_order_type"ENUM_ORDER_TYPE")
[ENUM_ORDER_STATE](https://www.mql5.com/pt/docs/constants/tradingconstants/orderproperties#enum_order_state"ENUM_ORDER_STATE")
[ENUM_ORDER_TYPE_FILLING](https://www.mql5.com/pt/docs/constants/tradingconstants/orderproperties#enum_order_type_filling"ENUM_ORDER_TYPE_FILLING")
[ENUM_ORDER_TYPE_TIME](https://www.mql5.com/pt/docs/constants/tradingconstants/orderproperties#enum_order_type_time"ENUM_ORDER_TYPE_TIME")

####  [PropertiesDeal](https://www.mql5.com/pt/docs/constants/tradingconstants/positionproperties)
------------
*O Tipo PropertiesDeal é um dictionary que tem o seguinte modelo (Propriedades da Transação):*
```python
{
 	'TICKET': int,# Bilhete da transação. Um número exclusivo atribuído a cada transação.
	'ORDER': int, # Número da ordem da transação.
	'TIME':  date, # Propriedades da Transação
	'TIME_MSC': int, # O tempo de execução de negociações em milissegundos desde 01.01.1970
	'TYPE': ENUM_DEAL_TYPE, # Tipo de transação
	'ENTRY': ENUM_DEAL_ENTRY, # Entrada de uma transação - entrada, saída, reversão
	'MAGIC': int,  # Número mágico de uma transação
    'REASON': ENUM_DEAL_REASON, # Razão ou origem para realizar a transação
    'POSITION_ID': int, # Identificador de uma posição, na abertura, modificação ou fechamento da qual esta transação tomou parte
    'VOLUME': float, # Volume da transação
    'PRICE': float, # Preço da transação
    'COMMISSION': float, # Preço da transação
    'SWAP': float, # Swap acumulativo no fechamento
    'PROFIT': float, # Lucro da transação
    'SYMBOL':  String, # Ativo (symbol) da transação
    'COMMENT':  String # Comentário da transação
}
```
[ENUM_DEAL_TYPE](https://www.mql5.com/pt/docs/constants/tradingconstants/dealproperties#enum_deal_type "ENUM_DEAL_TYPE")
[ENUM_DEAL_ENTRY](https://www.mql5.com/pt/docs/constants/tradingconstants/dealproperties#enum_deal_entry "ENUM_DEAL_ENTRY")
[ENUM_DEAL_REASON](https://www.mql5.com/pt/docs/constants/tradingconstants/dealproperties#enum_deal_reason "ENUM_DEAL_REASON")