import socket 

class ServerTCP:
    def __init__(self, _HOST, _PORT):
        self.socketTCP = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.socketTCP.bind((_HOST, _PORT))    

    def start(self):
        try:
            self.socketTCP.listen()
            self.socketTCP.settimeout(0.6)
            self.clientRecv, self.client = self.socketTCP.accept()   
            return True
        except (socket.timeout, socket.error):
            self.socketTCP.close()
            return False    
    
    def recv(self):
        try:
            _tmp = self.clientRecv.recv(1024000).decode("utf-8") ## 1mb ou 1024kb
            return _tmp
        except (socket.timeout, socket.error):
            self.socketTCP.close()
            return None
         
    def send(self, command):
        try:
            self.clientRecv.send(command.encode())
            return 1
        except (socket.timeout, socket.error):
            self.socketTCP.close()
            return None