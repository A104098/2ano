#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "person.h"


int main(int argc, char* argv[]){

    if ( argc < 3 )
    {
        printf("Usage:\n");
        printf("Add new person: ./people -i [name] [age]\n");
        printf("List N persons: ./people -l [N]\n");
        printf("Change person age: ./people -u [name] [age]\n");
        printf("Change person age (v2): ./people -o [position] [age]\n");
        return 1;
    }

    if ( strcmp(argv[1],"-i") == 0 )
    {
        if (argc < 4) {
            fprintf(stderr, "Usage: ./people -i [name] [age]\n");
            return 1;
        }
        return insertPerson(argv[2], atoi(argv[3]));
    }

    if ( strcmp(argv[1],"-l") == 0 )
    {
        int n = atoi(argv[2]);
        if (n <= 0) {
            fprintf(stderr, "Usage: ./people -l [N] (N > 0)\n");
            return 1;
        }
        return listPersons(n);
    }

    if ( strcmp(argv[1],"-u") == 0 )
    {
        if (argc < 4) {
            fprintf(stderr, "Usage: ./people -u [name] [age]\n");
            return 1;
        }
        return updatePerson(argv[2], atoi(argv[3]));
    }

    if ( strcmp(argv[1],"-o") == 0 )
    {
        // TO DO
    }

    return 0;
}
