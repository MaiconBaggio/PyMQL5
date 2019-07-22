from .ServerTCP import ServerTCP
from .Tools import MQL5parse

class ConnectionMQL5:
    def __init__(self):   
        self.Status = False   

    def startConnection(self):
        self._server_ = ServerTCP("127.0.0.1", 1235)
        self.Status = self._server_.start()
        return self.Status
        
    def sendRecv(self, text):
        if self._server_.send(text) != None:
            return self._server_.recv()
        return None    
        
    def MQL5(self, text):
        msg = None
        if self.Status == False:
            self.startConnection()

        if self.Status:        
            msg = self.sendRecv(text)
            if msg == None:
                if self.startConnection():
                    return MQL5parse(self.sendRecv(text))            
        return MQL5parse(msg)