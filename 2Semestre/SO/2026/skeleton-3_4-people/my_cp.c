#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

int my_cp (int in_fd,int out_fd){
    size_t buf_size= sizeof(char)*1024;
    char* buf = malloc(buf_size);

    ssize_t r,w;
    while((r=read(in_fd,buf,buf_size)) > 0) {
        w = write(out_fd, buf, r);
        if (w != r) {
            perror("Error when writing\n");
            free(buf);
            return 1;
        }
    }

    free(buf);
    return 0;
}