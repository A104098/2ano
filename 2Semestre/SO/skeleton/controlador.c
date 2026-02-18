#include <stdio.h>
#include "mysystem.h"

void controller(int N, char** commands) {

//criar tantos filhos quantos comandos
//cada filho executa um comando, e  executa o seu comando (sistematicamente) até chegar ao 0
int status;
pid_t pid;
pid_t pids [N];

 for(int i = 0; i<N; i++){
 	pid = fork();
 	if(pid == 0){
		//filho, fazer até chegar ao 0
		int res = 1;
		int counter = 0;
 		while (res != 0){ //enquanto o meu programa não der 0 quero continuar a corre-lo
 			res = mysystem(commands[i]);
			counter++;
 		}
		_exit(counter);
 	
	} // se pusesse aqui o else, ele ia percorrer sequencialmente, mas nós queremos que ele faça tudo ao mesmo tempo (paralelamente)
		pids[i] = pid;
 }

 for(int i = 0; i<N; i++){
	waitpid(pids[i], &status, 0);
 	if(WIFEXITED(status)){
 		printf("[pai] - o filho %s devolveu o valor %d\n", commands[1], WEXITSTATUS(status));
 	}
 	else{
 		printf("[pai] - o filho  não terminou\n");
 	}

}
int main(int argc, char* argv[])  {

    char *commands[argc-1];
    int N = 0;
	for(int i=1; i < argc; i++){
		commands[N] = strdup(argv[i]);
		printf("command[%d] = %s\n", N, commands[N]);
        N++;
	}

    controller(N, commands);

	return 0;
}
}