#include <fcntl.h>
#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <stdio.h>
// no linux: #include <unistd.h> 

int main(int argc, char *argv[]) {
    size_t buf_size = 1024;
    char* buf = malloc(sizeof(char)* buf_size);
    size_t r, w;
    while((r=read(STDIN_FILENO,buf, buf_size)) > 0) {
        w = write(STDOUT_FILENO, buf, r); 
        if (w != r) { 
            perror(stderr, "Error when writing\n"); 
            return 1; 
        } 
    }

    return 0; 
}