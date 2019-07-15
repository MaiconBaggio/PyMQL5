def MQL5parse(text):
    if text == None:
        return text
    text = text[0:len(text) - 1]    
    Array = text.split(";")
    resultArray = []
    if len(Array) == 1:
        return Array[0]
    for i in Array:
        resultArray.append(i.split(","))
    return resultArray

def MQL5Period(text):
    Periods  =  ["M1", "M2", "M3", "M4", "M5", "M6", "M10", "M12", "M15", "M20", "M30", "H1", "H2", "H3", "H4", "H6", "H8", "H12", "D1", "W1", "MN1"]
    for i in Periods:
        if i == text:
            return "PERIOD_" + i
    return "PERIOD_CURRENT"        