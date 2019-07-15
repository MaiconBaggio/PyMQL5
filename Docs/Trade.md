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