import java.util.Tresset;
import java.util.stream.Collector;
import java.util.stream.Collectors; 

public class Turma {

    private String nome;
    private String codigolc;
    private Map<String, Aluno> alunos;

    public void InsereAluno(Aluno a){

        this.alunos.put(a.getNumero(), a.clone());
    }

    public Aluno getALuno(String numeroAluno){
        if(this.alunos.containsKey(numeroAluno)){
            return null;

        }
        return this.alunos.get(numeroAluno).clone();

}

    public void removeAluno(String numeroAluno){
        this.alunos.remove(numeroAluno);
    }

    public Set<String> todosOsCodigos(){
        return this.alunos.keySet();
    }

    public int qtsAlunos(){
        return this.alunos.size();
    }

    public Collection<Aluno> alunosOrdemAlfabetica(){
        return this.alunos.values().stream().sorted(a1,a2) -> a1.getNome().compareTo(a2.getNome()).toList(); 
    }

    public Set<Aluno>alunosOrdemDescrescenteNumero(){

        return this.alunos.values().stream().map(ALuno,clone).collect(Collectors.toCollection(TreeSet::new)).descendingSet();
    }

        
    }
