#include <unistd.h>
#include <fcntl.h>

int main (){
    int fdIn = open("/etc/passwd", O_RDONLY);
    int fdOut = open("saida.txt", O_WRONLY | O_CREAT | O_TRUNC, 0666);
    int fdErr = open("errors.txt", O_WRONLY | O_CREAT | O_TRUNC, 0666);

    dup2(fdIn,0);
    int fdStdout = dup(1);
    dup2(fdOut,1);
    dup2(fdErr,2);

    close (fdIn);
    close (fdOut);
    close (fdErr);

    printf ("terminei\n");

    dup2(fdStdout,1);
    printf("Terminei!\n");
}