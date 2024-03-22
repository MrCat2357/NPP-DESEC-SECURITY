#!/usr/bin/python3

import socket

ip = input("DIGITE O IP:")

for porta in range(1,65535):

	meusocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	if meusocket.connect_ex((ip, porta)) == 0:
		banner = meusocket.recv(1024)

		print(f"BANNER DA PORTA {porta}")
		print(banner)
