#include <fcntl.h>
#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h> //no linux apenas

int main(int argc, char *argv[]) {
    size_t buf_size = 1024;
    char* buf = malloc(sizeof(char)* buf_size);
    size_t r, w;
    while((r=read(STDIN_FILENO,buf, buf_size)) > 0) {
    w = write(STDOUT_FILENO, buf, r); 
    if (w != r) { perror("Error when writing\n"); 
        return 1; } 
    } 
    return 0;
} 

int main(int argc, char** argv){
    int r;
    if (argc < 2) {
        r=my_cat(STDIN_FILENO);
    } else { int fd = open(argv[1], O_RDONLY);
        if (fd < 0) {
            perror("opening");
            return 1;
        }
        r=my_cat(fd);
        close(fd);
    }
    return r;
}

