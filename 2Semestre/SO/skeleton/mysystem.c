#include "mysystem.h"



int mysystem (const char* command) {

	char* exec_args[20];
	int status;
	int res = -1;

	printf("command : %s\n", command);
	char* cmd = strdup(command);
	char* back;
	int i=0;
	while((back = strsep (&cmd, " ")) != NULL){
		printf("back : %s\n", back);
		printf("cmd : %s\n", cmd);
		exec_args[i] = back;
		i++;
	}
	exec_args[i] = NULL;
	pid_t pid =fork();
	if(pid==0){
		//filho
		execvp(exec_args[0], exec_args);
	}else{
			//pai
			pid_t terminated_pid = wait(&status);
			if(WIFEXITED(status)){
				printf("[pai] - o filho %d devolveu o valor %d\n", terminated_pid, WEXITSTATUS(status));

			}
			else{
				printf("[pai] - o filho %d não terminou\n", terminated_pid);
			}
		}

		return res;

	}

