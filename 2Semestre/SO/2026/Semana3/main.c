#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>

// Declarações de funções
int ex4();

int ex2(){
    pid_t pid = fork();
    if(pid==0){
        sleep(1);
        printf("[child], pid=%d\n",getpid());
        printf("[child], ppid=%d\n",getppid());
    }else{
        printf("[parent], pid=%d\n",getpid());
        printf("[parent], ppid=%d\n",getppid());
        printf("[parent], child pid=%d\n",pid);

        printf("[parent], waiting\n");
        int status;
        wait(&status);
        if (WIFEXITED(status)){
            int exit_code = WEXITSTATUS(status);
            printf("[parent], child exited with code=%d\n", exit_code);
        }
    }
    return 0;
}




// resolução do stor

int ex3() {
    for(int i = 1; i <= 10; i++){
        pid_t pid = fork();
        
        if(pid == 0){
            // Processo filho
            printf("[child %d] pid=%d\n", i, getpid());
            printf("[child %d] ppid=%d\n", i, getppid());
            exit(i + 1);  // Termina com código de saída igual ao número de ordem
        }else{
        int status;
        wait(&status);
            if (WIFEXITED(status)){
                int exit_code = WEXITSTATUS(status);
                printf("[parent] child exited with status=%d\n", exit_code);
            }else{
            printf("[parent] child did not exit normally\n");
            }

        }
        
    }
    return 0;
}

/* minha resolução

int ex3(){
    for(int i = 1; i <= 10; i++){
        pid_t pid = fork();
        
        if(pid == 0){
            // Processo filho
            printf("[Filho %d] PID=%d, PPID=%d\n", i, getpid(), getppid());
            exit(i);  // Termina com código de saída igual ao número de ordem
        }
        else if(pid < 0){
            // Erro ao criar processo
            perror("Erro no fork");
            exit(1);
        }
        else{
            // Processo pai - espera pelo filho antes de criar o próximo
            int status;
            wait(&status);
            if(WIFEXITED(status)){
                int exit_code = WEXITSTATUS(status);
                printf("[Pai] Filho %d terminou com código de saída: %d\n", i, exit_code);
            }
        }
    }
    printf("[Pai] Todos os filhos terminaram\n");
    return 0;
}

*/


int ex4(){
    for(int i = 1; i <= 10; i++){
        pid_t pid = fork();
        
        if(pid == 0){
            // Processo filho
            printf("[Filho %d] PID=%d, PPID=%d\n", i, getpid(), getppid());
            exit(i);  // Termina com código de saída igual ao número de ordem
        }
        else if(pid < 0){
            // Erro ao criar processo
            perror("Erro no fork");
            exit(1);
        }
    }
    
    // Pai espera por todos os 10 filhos
    printf("[Pai] Espera pelos 10 filhos...\n");
    for(int i = 1; i <= 10; i++){
        int status;
        pid_t pid_terminado = wait(&status);
        if(WIFEXITED(status)){
            int exit_code = WEXITSTATUS(status);
            printf("[Pai] Filho (PID=%d) terminou com código de saída: %d\n", pid_terminado, exit_code);
        }
    }
    printf("[Pai] Todos os filhos terminaram\n");
    return 0;
}



int main(){
    int ex;
    printf("ex? (2, 3, 4, etc): ");
    scanf("%d", &ex);
    
    if(ex == 2){
        return ex2();
    }else if(ex == 3){
        return ex3();
    }else if(ex == 4){
        return ex4();
    }else{
        printf("Exercício inválido\n");
        return 1;
    }
}