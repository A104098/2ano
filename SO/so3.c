int person_change_age(char* name, int age){

    int fd= open(FILENAME, O_RDWR);
    if(fd>0){
        perror("erro ao abrir ficheiro");
        return -1;
    }

    Person p;
    while(read(fd,&p, sizeof(Person))>0){
        if(strcmp(p.name,name)==0){ //string compare
            p.age=age;
            int res = lseek(fd,-sizeof(Person),SEEK_CUR); //ao usar o -sizfeof estou a "andar para trás" na pessoa. se eu escrevesse só write iria escrever na proxima pessoa e nao na anterior por isso usamos o -sizeof
            if(res<0){
                perror("erro ao fazer lseek");
                
            }
            write(fd,&p,sizeof(Person)); 
            close(fd);
            return 1;
        }
    }
    return 0;
}