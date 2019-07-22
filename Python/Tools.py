def MQL5parse(text):
    if text == None:
        return text
    text = text[0:len(text) - 1]    
    Array = text.split(";")
    resultArray = []    
    for i in Array:
        resultArray.append(i.split(","))      
    if len(Array) == 1 and len(resultArray[0]) == 1:
        return resultArray[0][0]
    return resultArray

def MQL5Period(text):
    Periods  =  ["M1", "M2", "M3", "M4", "M5", "M6", "M10", "M12", "M15", "M20", "M30", "H1", "H2", "H3", "H4", "H6", "H8", "H12", "D1", "W1", "MN1"]
    for i in Periods:
        if i == text.upper():
            return "PERIOD_" + i
    return "PERIOD_CURRENT"        