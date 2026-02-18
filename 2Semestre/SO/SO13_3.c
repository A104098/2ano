int valuExists(int **matrix, int value)
{
    pid_t pid;
    int status;
    int ret = 0;

    for(int i = 0; i < ROWS; i++){
        if((pid = fork()) == 0){
            for(int j = 0; j < COLS; j++){
                if(matrix[i][j] == value){
                    exit(1);
                }
            }
            exit(-1);
        }
    }
}

for(int i = 0; i < ROWS; i++){
   pid_t termianted_pid = wait(&status);
   if(WIFEXITED(status) ){
    printf("Child %d exited with status %d\n", termianted_pid, WEXITSTATUS(status)); // WEXITSTATUS(status) returns the exit status of the child, o return não envia mensagem ao pai apenas o WEXIT.
   }
    if(WEXITSTATUS(status) != 255){
        ret = 1;
    }
else
{
    printf(*[PAI] - O filho não terminou corretamente\n);
}
return ret;
}

  
