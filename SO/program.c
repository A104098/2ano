#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>
/*
int main(){
   printf("o meu pai é %d\n", getppid());
    printf("o meu pai é %d\n", getppid());
    return 0;
    
    como aplicar/perceber o fork; numero de forks² = numero de processos
    fork ();
   printf("ola\n");
    return 0; //output: ola ola

    
}
*/
//2. Escreva um programa que crie um processo-filho. O processo-filho deverá escrever no ecrã o seu PID e o PID do seu pai. O processo-pai deverá escrever no ecrã o seu PID e o PID do seu filho.
int main(){
    pid_t pid = fork();

    if(pid == 0){ //se for 0 é o filho
        printf("sou o filho e o meu ID é: %d\n", getpid());
        printf("sou o filho e o ID do meu pai é: %d \n", getppid());
    }else{ 
        printf("sou o pai e o meu ID é : %d\n", getpid());
        printf("sou o pai e o identificador do meu pai é: %d \n", getppid());
    }
    return 0;
}