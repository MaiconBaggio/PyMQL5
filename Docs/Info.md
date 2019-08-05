# PyMQL5

### Informações 

####  [AccountInfoAll](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation)

------------
**Para obter informações sobre a conta atual com um dictionary do [tipo PropertiesAccount](#PropertiesAccount "tipo PropertiesAccount") .**

AccountInfoAll()

Exemplo:
```python
mql5.AccountInfoAll()
```

####  [SymbolInfoAll](https://www.mql5.com/pt/docs/constants/environment_state/marketinfoconstants)

------------
**Para obter as informações atuais do mercado com um dictionary do [tipo PropertiesSymbol](#SymbolInfoAll "tipo SymbolInfoAll") .**

SymbolInfoAll(Symbol)

Exemplo:
```python
mql5.SymbolInfoAll("PETR4")
```

####  [OptionInfo](https://www.mql5.com/pt/docs/constants/environment_state/marketinfoconstants)

------------
**Para obter as informações atuais sobre uma opção com um dictionary do [tipo PropertiesOptionInfo](#PropertiesOptionInfo "tipo PropertiesOptionInfo") .**

OptionInfo(Symbol)

Exemplo:
```python
mql5.OptionInfo("PETRH285")
```


####  [PropertiesAccount](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation)
------------
*O Tipo PropertiesAccount é um dictionary que tem o seguinte modelo (Propriedades da Conta):*
```python
{
    'LOGIN': int, # Número da conta
    'TRADE_MODE': ENUM_ACCOUNT_TRADE_MODE, # Modo de negociação da conta
    'LEVERAGE': , # Alavancagem da conta
    'LIMIT_ORDERS': int, # Número permitido máximo de ordens pendentes ativas
    'MARGIN_SO_MODE': ENUM_ACCOUNT_STOPOUT_MODE, # Modo para definir a margem permitida mínima
    'TRADE_ALLOWED':  int, #  Negociação permitida para a conta atual
    'TRADE_EXPERT':  int, # Negociação permitida para um Expert Advisor
    'MARGIN_MODE': ENUM_ACCOUNT_MARGIN_MODE, # Modo de cálculo da margem
    'CURRENCY_DIGITS':  int, # Número de casas decimais, para a moeda da conta.
    'BALANCE': float, # Saldo da conta na moeda de depósito
    'CREDIT': float, # Crédito da conta na moeda de depósito
    'PROFIT': float, # Lucro atual de uma conta na moeda de depósito
    'EQUITY': float, # Saldo a mercado da conta na moeda de depósito
    'MARGIN': float, # Margem da conta usada na moeda de depósito
    'MARGIN_FREE': float, # Margem livre de uma conta na moeda de depósito
    'MARGIN_LEVEL': float, # Nível de margem de conta em percentagem
    'MARGIN_SO_CALL': float, # Nível de chamada de margem. Dependendo da definição, ACCOUNT_MARGIN_SO_MODE
    'MARGIN_INITIAL': float, # Margem inicial. O montante reservado numa conta para cobrir a margem de todas as ordens pendentes
    'MARGIN_MAINTENANCE': float, # Margem de manutenção. O patrimônio líquido mínimo reservado numa conta para cobrir o valor mínimo de todas as posições em aberto
    'ASSETS': float, # Os ativos atuais de uma conta
    'LIABILITIES': float, # As responsabilidades atuais de uma conta
    'COMMISSION_BLOCKED': float, # O valor da comissão bloqueada atual numa conta
    'NAME': String, # Nome do cliente
    'SERVER': String, # Nome do servidor de negociação
    'CURRENCY': String, # Moeda da conta
    'COMPANY': String # Nome de uma empresa que serve a conta
}
```
[ENUM_ACCOUNT_TRADE_MODE](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation#enum_account_trade_mode "ENUM_ACCOUNT_TRADE_MODE")
[ENUM_ACCOUNT_STOPOUT_MODE](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation#enum_account_stopout_mode "ENUM_ACCOUNT_STOPOUT_MODE")
[ENUM_ACCOUNT_MARGIN_MODE](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation#enum_account_margin_mode "ENUM_ACCOUNT_MARGIN_MODE")


####  [PropertiesSymbol](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation)
------------
*O Tipo PropertiesSymbol é um dictionary que tem o seguinte modelo (Propriedades do Ativo):*
```python
{

}
```

####  [PropertiesOptionInfo](https://www.mql5.com/pt/docs/constants/environment_state/accountinformation)
------------
*O Tipo PropertiesOptionInfo é um dictionary que tem o seguinte modelo (Propriedades da Opção):*
```python
{
    'OPTION_MODE': ENUM_SYMBOL_OPTION_MODE,
    'OPTION_RIGHT': ENUM_SYMBOL_OPTION_RIGHT,
    'START_TIME': date,
    'EXPIRATION_TIME': date,
    'OPTION_STRIKE': float,
    'BID': float,
    'ASK': float,
    'LAST': float,
    'VOLUME_REAL': float
}
```
[ENUM_SYMBOL_OPTION_MODE](https://www.mql5.com/pt/docs/constants/environment_state/marketinfoconstants#enum_symbol_option_mode "ENUM_SYMBOL_OPTION_MODE")
[ENUM_SYMBOL_OPTION_RIGHT](https://www.mql5.com/pt/docs/constants/environment_state/marketinfoconstants#enum_symbol_option_right "ENUM_SYMBOL_OPTION_RIGHT")