//listaligada.h 
typedef struct lista listat;
listat* criar_lista(void);
listat* inserir_lista(listat* l, int v);

//o que vai estar na listaligada.c :
//#include listaligada.h


//pessoa.h
#ifndef --pessoa_h
#define --pessoa_h
struct pessoa;

void criar_pessoa(struct pessoa** pessoa, const char* nome, int idade); 
char* pessoa_nome(struct pessoa* pessoa);
int pessoa_idade(struct pessoa* pessoa);
#endif

//pessoa.c
//#include pessoa.h
structofpessoa {
    char* nome;
    int idade;
}
void criar_pessoa(struct pessoa** pessoa, const char* nome, int idade){
    //aloca memoria para a struct pessoa
    pessoa->nome = strdup(nome);//duplica a string nome 
    pessoa->idade = idade;
    //inicializa os campos nome e idade
}

char* pessoa_nome(struct pessoa* pessoa){
    return pessoa->nome; //devolve o campo nome
}

