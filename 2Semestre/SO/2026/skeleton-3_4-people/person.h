#ifndef PERSON_H
#define PERSON_H

#include <sys/types.h>

typedef struct person {
	char name[200];
	int age;
} Person;

int insertPerson(char* name, int age);

#endif // PERSON_H