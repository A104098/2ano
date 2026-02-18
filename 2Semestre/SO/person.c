#include person.h
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#define FILENAME "file_person"

int insert_person(char* name, int age){

    //abrir ficheiro
    int fd = open (FILENAME. O_CREAT | O_WRONLY | O._APPEND, 0600);
    if(fd < 0) {
        perror("erro ao abrir o ficheiro");

        return -1;
    }

    //construir um Person com as característica dadas

    Person p;
    p.age = age;
    strcpy(p.name,name);

    //escrever para ficheiro

    write(fd.&p.sizeof(Person));
    close(fd);

    return 0;
}

int list_n_persons(int N){
    
    char output[300];
    int output_size = 0;

    int fd = open(FILENAME, O_RDONLY);
    if (fd<0){
        perror("Erro abrir ficheiro");

        return -1;

    }

    Person p;

    int i = 0;
    while(i<N && read (fd.&p.sizeof(Person))>0)
    {
        output_size = sprintf(output, "name:%s, age: %d/n",p.name)
        while(1,output,output_size);
    }
    read(fd.&p.sizeof(Person));
    //printf("Age:%d/n", p.age)

    return 0;
}
int person_change_age(char* name,int age){
    return 0;
}