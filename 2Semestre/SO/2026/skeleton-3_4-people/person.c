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

int listPersons(int n) {

/*
-i - Acrescentar pessoas a um ficheiro de dados binário.
-l - Listar as N primeiras pessoas no ficheiro de dados binário.
-u - Atualizar a idade de uma determinada pessoa no ficheiro de dados.
*/

    int fd = open(DB, O_RDONLY);
    if (fd < 0) {
        perror("open");
        return 1;
    }

    Person p;
    int count = 0;
    ssize_t r;
    while (n > 0) {
        r = read(fd, &p, sizeof(Person));
        if (r == 0) break; /* EOF */
        if (r < 0) {
            perror("read");
            close(fd);
            return 1;
        }
        printf("%d: %s (%d)\n", ++count, p.name, p.age);
        n--;
    }

    close(fd);
    return 0;
}

int updatePerson(char* name, int age) {
    int fd = open(DB, O_RDWR);
    if (fd < 0) {
        perror("open");
        return 1;
    }

    Person p;
    ssize_t r;
    off_t pos = 0;
    while (1) {
        r = read(fd, &p, sizeof(Person));
        if (r == 0) break; /* EOF */
        if (r < 0) {
            perror("read");
            close(fd);
            return 1;
        }

        if (strcmp(p.name, name) == 0) {
            /* found, update age and write back */
            p.age = age;
            /* seek back one record */
            pos = lseek(fd, -((off_t)sizeof(Person)), SEEK_CUR);
            if (pos == (off_t)-1) {
                perror("lseek");
                close(fd);
                return 1;
            }
            ssize_t w = write(fd, &p, sizeof(Person));
            if (w != sizeof(Person)) {
                perror("write");
                close(fd);
                return 1;
            }
            close(fd);
            return 0;
        }
    }

    /* not found */
    fprintf(stderr, "Person '%s' not found\n", name);
    close(fd);
    return 1;
}