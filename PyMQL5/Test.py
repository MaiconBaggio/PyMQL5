from PyMQL5 import PyMQL5
mql5 = PyMQL5()
fechamento = mql5.iClose("PETR4", "M5", 0)
if fechamento != None and fechamento != "":
    print("Ultimo preço de PETR4: ", fechamento)
else:
    print("Não a Conexão com MetaTrader5 verifique!")