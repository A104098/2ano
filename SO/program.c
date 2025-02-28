#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <stdio.h>

#define BUFFER_SIZE 1024

/*
Ex 1

int main(){
    char* buffer = (char *) malloc(sizeof(char) * BUFFER_SIZE);

    ssize_t bytes_read, bytes_written;

    while ((bytes_read = read(0,buffer,BUFFER_SIZE)) > 0){
        bytes_written = write(1,buffer,bytes_read);

        if (bytes_read != bytes_written) return -1;
    }
    free(buffer);

}
*/

/*
Ex 2
*/

int mycat(){
    char* buffer = (char *) malloc(sizeof(char) * BUFFER_SIZE);

    ssize_t bytes_read, bytes_written;

    while ((bytes_read = read(0,buffer,BUFFER_SIZE)) > 0){
        bytes_written = write(1,buffer,bytes_read);

        if (bytes_read != bytes_written) return -1;
    }
    free(buffer);

}

int mycatAdvanced(char const *filename){
    int fd = open(filename, O_RDONLY);

    if(fd<0){
        perror("Error");
        return -1;
    }

    char* buffer = (char *) malloc(sizeof(char) * BUFFER_SIZE);

    ssize_t bytes_read, bytes_written;

    while ((bytes_read = read(fd,buffer,BUFFER_SIZE)) > 0){
        bytes_written = write(1,buffer,bytes_read);

        if (bytes_read != bytes_written) return -1;
    }
    free(buffer);

    close(fd);

}

int my_cp(char const *src, char const *dest){
    int fd_src= open(src, O_RDONLY);

    if(fd_src<0){
        perror("Error");
        return -1;

    }
    int fd_dst= open(dest, O_CREAT | O_WRONLY | O_TRUNC, 0600);
    if(fd_dst<0){
        perror("Error");
        return -1;

    } 

    char* buffer = (char *) malloc(sizeof(char)* BUFFER_SIZE);

    ssize_t bytes_read, bytes_written;

    while ((bytes_read = read(fd_src,buffer,BUFFER_SIZE))> 0)
    {
        bytes_written = write(fd_dst,buffer,BUFFER_SIZE);
        if (bytes_read != bytes_written) return -1;
    }

    free(buffer);
    
    close(fd_src);
    close(fd_dst);
    
}


int main(int argc, char const *argv[]){
   my_cp(argv[1], argv[2]);
}