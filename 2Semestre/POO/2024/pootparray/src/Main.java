
public Class Aluno{
    private String numero;
    private int nota;
    private String nome;
    private String curso;
        }
public Aluno(){
    this.numero= numero;
    this.nota= nota;
    this.nome = nome;
    this.curso = curso;
}

public Aluno(Aluno umAluno){
    this.numero= umAluno.getAluno();
    this.nota= umAluno.getNota();

}
public String getNumero() {
    return this.numero;
}

public int getNota(){
    return this.nota;
}

public String getNome(){
    return this.nome;
}
//metodo que devolve o curso de um aluno
public String getCurso(){
    return this.curso;
}

public void setNota (int novaNota){
    this.nota=novaNota;
}

public void setNumero(String numero){
    this.numero=numero;
}

public void setNome (String nome){
    this.nome;
}

public void setCurso (String curso){
    this.curso;
}

public String toString (){
    StringBuffer sb = new StringBuffer ();
    sb.append("Numero: ");
    sb.append(this.numero+"\n");
    sb.append("Nome: ");
    sb.append(this.nome+"\n");
    sb.append("Curso: ");
    sb.append(this.curso+"\n");
}

public boolean equals(Objeto o) {
    if (this == o)
        return true;
    if((o == null) || (this.getClass() != o.getClass()))
        return false;
    Aluno umAluno = (Aluno) o;
    return (this.nome.equals(umAluno.getNome()) && this.nota == umAluno.getNota()
     && this.numero.equals(umAluno.getNumero))
            && this.curso.equals(umAluno.getCurso()));
}

