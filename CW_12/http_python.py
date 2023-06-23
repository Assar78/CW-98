from http.server import HTTPServer, BaseHTTPRequestHandler

HOST = "127.0.0.1"
PORT = 9999

class ToDo(BaseHTTPRequestHandler):
    
    def do_GET(self):
        self.send_response(200)
        self.send_header("content-type", "text/html")
        self.end_headers()

        self.wfile.write(bytes("Hello", 'utf-8'))

server = HTTPServer((HOST,PORT),ToDo)

server.serve_forever()
server.server_close()