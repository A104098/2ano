#include "person.h"
#include <sys/types.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

#define DB "file_people"

int insertPerson(char* name, int age) {
    int fd = open(DB, O_WRONLY | O_CREAT | O_APPEND, 0644);
    if (fd < 0) {
        perror("open");
        return 1;
    }

    Person p;
    /* safer copy */
    strncpy(p.name, name, sizeof p.name - 1);
    p.name[sizeof p.name - 1] = '\0';
    p.age = age;

    ssize_t wrote = write(fd, &p, sizeof(Person));
    if (wrote != sizeof(Person)) {
        perror("write");
        close(fd);
        return 1;
    }

    close(fd);
    return 0;
}

int list (int n) {
    int fd = open(DB, O_RDONLY);
    if (fd < 0) {
        perror("open");
        return 1;
    }
    Person p;
    read(fd, &p, sizeof(Person));
    return 0;
}