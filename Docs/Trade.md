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

####  [OrderDelete](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradeorderdelete)

------------
**Exclui a ordem pendente.**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

OrderDelete(Ticket)
 
Exemplo:
```python
mql5.OrderDelete(125663)
```

####  [CancelAllOrder](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradeorderdelete)

------------
**Exclui todas as ordem pendente.**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

CancelAllOrder()
 
Exemplo:
```python
mql5.CancelAllOrder()
```

####  [PositionCloseSymbol](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradepositionclose)

------------
**Fecha a posição pelo símbolo deteminado**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

PositionCloseSymbol(Symbol)
 
Exemplo:
```python
mql5.PositionCloseSymbol("PETR4")
```

####  [PositionCloseTicket](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradepositionclose)

------------
**Fecha a posição com o bilhete(ticket) indicado.**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

PositionCloseTicket(Ticket)
 
Exemplo:
```python
mql5.PositionCloseTicket(125663)
```
####  [PositionClosePartial](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradepositionclosepartial)

------------
**Fecha parte da posição com o bilhete(ticket) indicado, ao estar ativa a contabilidade de cobertura.**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

PositionClosePartial(Ticket, Volume)
 
Exemplo:
```python
mql5.PositionClosePartial(125663, 100)
```

####  [PositionModifySymbol](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradepositionmodify)

------------
**Modifica os parâmetros de posição pelo símbolo determinado.**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

PositionModifySymbol(Symbol, SL, TP)
 
Exemplo:
```python
mql5.PositionModifySymbol("PETR4",  27.40, 27.90)
```

####  [PositionModifyTicket](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradepositionmodify)

------------
**Altera os parâmetros da posição segundo o bilhete(ticket) indicado.**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

PositionModifyTicket(Ticket, SL, TP)

Exemplo:
```python
mql5.PositionModifyTicket(125663,  27.40, 27.90)
```

####  [CancelAllPositon](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradepositionclose)

------------
**Fecha todas as posições abertas.**

*Retorna 1 - em caso de verificação bem sucedida das estruturas básicas, caso contrário - 0.*

CancelAllPositon()

Exemplo:
```python
mql5.CancelAllPositon()
```

####  [SetEAMagicNumber](https://www.mql5.com/pt/docs/standardlibrary/tradeclasses/ctrade/ctradepositionclose)

------------
**Expert Advisor ID. Permite organizar um processamento analítico de ordens de negociação. Cada Expert Advisor pode definir seu próprio ID (identificador) único ao enviar uma solicitação de negociação.**

*Retorna 1*

SetEAMagicNumber(Number)

Exemplo:
```python
mql5.SetEAMagicNumber(10000)
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