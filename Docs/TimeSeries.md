# PyMQL5

### TimeSeries

####  [iOpen](https://www.mql5.com/pt/docs/series/iopen)

------------


*Retorna o valor do preço de abertura da barra (indicado pelo parâmetro shift) do gráfico correspondente.*

iOpen(Symbol, Period, Shift)
 


Exemplo:
```python
mql5.iOpen("PETR4",  "M1",  0)
```

####  [iHigh](https://www.mql5.com/pt/docs/series/ihigh)

------------


*Retorna o valor do preço de abertura da barra (indicado pelo parâmetro shift) do gráfico correspondente.*

iHigh(Symbol, Period, Shift)
 


Exemplo:
```python
mql5.iHigh("PETR4",  "M1",  0)
```


####  [iLow](https://www.mql5.com/pt/docs/series/ilow)

------------


*Retorna o valor do preço de abertura da barra (indicado pelo parâmetro shift) do gráfico correspondente.*

iLow(Symbol, Period, Shift)
 


Exemplo:
```python
mql5.iLow("PETR4",  "M1",  0)
```


####  [iClose](https://www.mql5.com/pt/docs/series/iclose )

------------


*Retorna o valor do preço de fechamento da barra (indicado pelo parâmetro shift) do gráfico correspondente*

iClose(Symbol, Period, Shift)
 

Exemplo:
```python
mql5.iClose("PETR4",  "M1",  0)
```


####  [iTime](https://www.mql5.com/pt/docs/series/itime)

------------


*Retorna o valor do preço de fechamento da barra (indicado pelo parâmetro shift) do gráfico correspondente*

iTime(Symbol, Period, Shift)
 

Exemplo:
```python
mql5.iTime("PETR4",  "M1",  0)
```

####  [iVolume](https://www.mql5.com/pt/docs/series/irealvolume)

------------

*Retorna o valor do preço de fechamento da barra (indicado pelo parâmetro shift) do gráfico correspondente*

iVolume(Symbol, Period, Shift)

Exemplo:
```python
mql5.iVolume("PETR4",  "M1",  0)
```

####  [CopyTicks](https://www.mql5.com/pt/docs/series/copyticks )

------------


CopyTicks(Symbol,  Start_Time_MSC, Count)

Exemplo:
```python
mql5.CopyTicks("PETR4",  0,  10) # Retorna os ultimos 10 ticks(TimesAndTrades) 
```

####  [CopyTicksRange](https://www.mql5.com/pt/docs/series/copyticksrange)

------------
**Retorna os **

CopyTicksRange(Symbol,  Start_Time_MSC, Stop_Time_MSC)

Exemplo:
```python
mql5.CopyTicksRange("PETR4", 1563791171058,1563791171221)
```

####  [CopyRates](https://www.mql5.com/pt/docs/series/copyrates)

------------
*Obtém dados históricos de estrutura  **[MQLRates](https://www.mql5.com/pt/docs/constants/structures/mqlrates)**,  de um ativo-período especificado na quantidade especificada. A ordenação dos elementos dos dados copiados é do presente para o passado, isto é, a posição de início 0 significa a barra corrente.*


**CopyRates(Symbol,  Period, Start_Pos, Count)** - Retorna um array do tipo MQLRates(Candles), com numero do canlde de inicio e quantidade especificados.
**CopyRatesTC(Symbol,  Period, Start_Time, Count)** - Retorna um array do tipo MQLRates(Candles), com data e horário do canlde de inicio e quantidade especificados.
**CopyRatesTT(Symbol,  Period, Start_Time, Stop_Time)** - Retorna um array do tipo MQLRates(Candles), com um range de data e horário especificado.
Exemplo:
```python
mql5.CopyRates("PETR4", "D1", 0, 10) 
```
```python
mql5.CopyRatesTC("PETR4", "M15", "2019.07.18 10:00:00", 10) 
```
```python
mql5.CopyRatesTT("PETR4", "M1", "2019.07.18 10:00:00", "2019.07.18 10:10:00") 
```

####  [CopyOpen](https://www.mql5.com/pt/docs/series/copyopen)

------------
*A função obtém um array do tipo **Double**, dosdados históricos de preços de abertura de barras para o par ativo-período selecionado na quantidade especificada. Deve ser notado que a ordenação dos elementos é do presente para o passado, isto é, a posição de início 0 significa a barra corrente.*

**CopyOpen(Symbol,  Period, Start_Pos, Count)** - Retorna um array do tipo double com os preços de abertura dos candles, com numero do canlde de inicio e quantidade especificados.
**CopyOpenTC(Symbol,  Period, Start_Time, Count)** - Retorna um array do tipo double com os preços de abertura dos candles, com data e horário do canlde de inicio e quantidade especificados.
**CopyOpenTT(Symbol,  Period, Start_Time, Stop_Time)** - Retorna um array do tipo double com os preços de abertura dos candles, com um range de data e horário especificado.
Exemplo:
```python
mql5.CopyOpen("PETR4", "D1", 0, 10) 
```
```python
mql5.CopyOpenTC("PETR4", "M15", "2019.07.18 10:00:00", 10) 
```
```python
mql5.CopyOpenTT("PETR4", "M1", "2019.07.18 10:00:00", "2019.07.18 10:10:00") 
```
####  [CopyHigh](https://www.mql5.com/pt/docs/series/copyhigh)

------------
*A função obtém um array do tipo **Double**, dos dados históricos dos preços de barra mais altos para o par ativo-período selecionado na quantidade especificada. Deve ser notado que a ordenação dos elementos é do presente para o passado, isto é, a posição de início 0 significa a barra corrente.*

**CopyHigh(Symbol,  Period, Start_Pos, Count)** - Retorna um array do tipo double com os preços de máximos dos candles, com numero do canlde de inicio e quantidade especificados.
**CopyHighTC(Symbol,  Period, Start_Time, Count)** - Retorna um array do tipo double com os preços de máximos dos candles, com data e horário do canlde de inicio e quantidade especificados.
**CopyHighTT(Symbol,  Period, Start_Time, Stop_Time)** - Retorna um array do tipo double com os preços de máximos dos candles, com um range de data e horário especificado.
Exemplo:
```python
mql5.CopyHigh("PETR4", "D1", 0, 10) 
```
```python
mql5.CopyHighTC("PETR4", "M15", "2019.07.18 10:00:00", 10) 
```
```python
mql5.CopyHighTT("PETR4", "M1", "2019.07.18 10:00:00", "2019.07.18 10:10:00") 
```

####  [CopyLow](https://www.mql5.com/pt/docs/series/copylow)

------------
*A função obtém um array do tipo **Double**, dos dados históricos de preços de barra mínimos para o par ativo-período selecionado na quantidade especificada. Deve ser notado que a ordenação dos elementos é do presente para o passado, isto é, a posição de início 0 significa a barra corrente.*

**CopyLow(Symbol,  Period, Start_Pos, Count)** - Retorna um array do tipo double com os preços de mínimos dos candles, com numero do canlde de inicio e quantidade especificados.
**CopyLowTC(Symbol,  Period, Start_Time, Count)** - Retorna um array do tipo double com os preços de mínimos dos candles, com data e horário do canlde de inicio e quantidade especificados.
**CopyLowTT(Symbol,  Period, Start_Time, Stop_Time)** - Retorna um array do tipo double com os preços de mínimos dos candles, com um range de data e horário especificado.
Exemplo:
```python
mql5.CopyLow("PETR4", "D1", 0, 10) 
```
```python
mql5.CopyLowTC("PETR4", "M15", "2019.07.18 10:00:00", 10) 
```
```python
mql5.CopyLowTT("PETR4", "M1", "2019.07.18 10:00:00", "2019.07.18 10:10:00") 
```

####  [CopyClose](https://www.mql5.com/pt/docs/series/copyclose)

------------
*A função obtém um array do tipo **Double**, dos dados históricos de preços de fechamento de barra para o par ativo-período selecionado na quantidade especificada. Deve ser notado que a ordenação dos elementos é do presente para o passado, isto é, a posição de início 0 significa a barra corrente.*

**CopyClose(Symbol,  Period, Start_Pos, Count)**- Retorna um array do tipo double com os preços de fechamento dos candles, com numero do canlde de inicio e quantidade especificados.
**CopyCloseTC(Symbol,  Period, Start_Time, Count)**- Retorna um array do tipo double com os preços de fechamento dos candles, com data e horário do canlde de inicio e quantidade especificados.
**CopyCloseTT(Symbol,  Period, Start_Time, Stop_Time)** - Retorna um array do tipo double com os preços de fechamento dos candles, com um range de data e horário especificado.
Exemplo:
```python
mql5.CopyClose("PETR4", "D1", 0, 10) 
```
```python
mql5.CopyCloseTC("PETR4", "M15", "2019.07.18 10:00:00", 10) 
```
```python
mql5.CopyCloseTT("PETR4", "M1", "2019.07.18 10:00:00", "2019.07.18 10:10:00") 
```

####  [CopyVolume](https://www.mql5.com/pt/docs/series/copyrealvolume)

------------
*A função obtém um array do tipo **int**, dos dados históricos de volumes de negociação para o par ativo-período selecionado na quantidade especificada. Deve ser notado que a ordenação dos elementos é do presente para o passado, isto é, a posição de início 0 significa a barra corrente.*

**CopyVolume(Symbol,  Period, Start_Pos, Count)** - Retorna um array do tipo ulong com os volume dos candles, com numero do canlde de inicio e quantidade especificados.
**CopyVolumeTC(Symbol,  Period, Start_Time, Count)** - Retorna um array do tipo ulong com os volume  dos candles, com data e horário do canlde de inicio e quantidade especificados.
**CopyVolumeTT(Symbol,  Period, Start_Time, Stop_Time)**- Retorna um array do tipo ulong com os volume dos candles, com um range de data e horário especificado.
Exemplo:
```python
mql5.CopyVolume("PETR4", "D1", 0, 10) 
```
```python
mql5.CopyVolumeTC("PETR4", "M15", "2019.07.18 10:00:00", 10) 
```
```python
mql5.CopyVolumeTT("PETR4", "M1", "2019.07.18 10:00:00", "2019.07.18 10:10:00") 
```


####  [Tipo MQLRates](https://www.mql5.com/pt/docs/constants/structures/mqlrates)
------------
*O Tipo MQLRates é um dictionary que tem o seguinte modelo:*
```python
 {
 	'TIME':  date, # Hora inicial do período
	'OPEN': float, # Preço de abertura
	'HIGH': float, # O preço mais alto do período
	'LOW': float, # O preço mais baixo do período
	'CLOSE': float, # Preço de fechamento
	'TICK_VOLUME': int, # Volume de Tick
	'SPREAD': int, # Spread
	'REAL_VOLUME': int   # Volume de negociação
}
```

####  [Tipo MQLTick](https://www.mql5.com/pt/docs/constants/structures/mqltick)
------------
*O Tipo MQLTick é um dictionary que tem o seguinte modelo:*
```python
{
	'TIME': date, # Hora da última atualização de preços
	'BID': float(i[1]), # Preço corrente de venda
	'ASK': float(i[2]), # Preço corrente de compra
	'LAST': float(i[3]), # Preço da última operação (preço último)
	'VOLUME': float(i[4]), # Volume para o preço último corrente
	'TIME_MSC': int(i[5]), # Tempo do "Last" preço atualizado em  milissegundos
	'FLAGS': int(i[6]), # Flags de tick
	'VOLUME_REAL': float(i[7])  # Volume para o preço Last atual com maior precisão
}
```