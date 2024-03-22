#include <stdio.h>
#include <sys/socket.h>
#include <netdb.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>
#include <arpa/inet.h>

int main(int argc, char *argv[]){

	int meusocket;
	int conecta;
	int contador;

	int inicio = 0;
	int final = 65535;
	char *destino = argv[1];

	struct sockaddr_in alvo;

	for(contador=inicio;contador<final;contador++){

	meusocket = socket(AF_INET,SOCK_STREAM,0);
	alvo.sin_family = AF_INET;
	alvo.sin_port = htons(21);
	alvo.sin_addr.s_addr = inet_addr(destino);

	conecta = connect(meusocket, (struct sockaddr *)&alvo, sizeof alvo);
	}
	close(meusocket);
	close(conecta);


}
