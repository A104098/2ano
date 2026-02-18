import java.time.LocalDateTime;
import java.util.ArrayList;
//aula 14/3/2025 alteramos para ArrayList
public class Encomenda {
    // Atributos
    private String cliente;
    private Integer nif;
    private String morada;
    private Integer nrEncomenda;
    private LocalDateTime data;
    private ArrayList<LinhaEncomenda> linhasEncomenda; // Usando explicitamente ArrayList para alterar o tipo

    // Construtores
    public Encomenda() {
        this.cliente = "";
        this.nif = 0;
        this.morada = "";
        this.nrEncomenda = 0;
        this.data = LocalDateTime.now();
        this.linhasEncomenda = new ArrayList<>(); // Inicialização como ArrayList
    }

    public Encomenda(String cliente, Integer nif, String morada, Integer nrEncomenda, LocalDateTime data) {
        this.cliente = cliente;
        this.nif = nif;
        this.morada = morada;
        this.nrEncomenda = nrEncomenda;
        this.data = data;
        this.linhasEncomenda = new ArrayList<>(); // Inicialização como ArrayList
    }

    public Encomenda(Encomenda outra) {
        this.cliente = outra.getCliente();
        this.nif = outra.getNif();
        this.morada = outra.getMorada();
        this.nrEncomenda = outra.getNrEncomenda();
        this.data = outra.getData();
        this.linhasEncomenda = new ArrayList<>(); // Inicialização como ArrayList

        // Copiar as linhas da encomenda
        for (LinhaEncomenda linha : outra.getLinhasEncomenda()) {
            this.linhasEncomenda.add(linha.clone());
        }
    }

    // Getters
    public String getCliente() {
        return cliente;
    }

    public Integer getNif() {
        return nif;
    }

    public String getMorada() {
        return morada;
    }

    public Integer getNrEncomenda() {
        return nrEncomenda;
    }

    public LocalDateTime getData() {
        return data;
    }

    public ArrayList<LinhaEncomenda> getLinhasEncomenda() {
        ArrayList<LinhaEncomenda> copia = new ArrayList<>();
        for (LinhaEncomenda linha : this.linhasEncomenda) {
            copia.add(linha.clone());
        }
        return copia;
    }

    // Setters
    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public void setNif(Integer nif) {
        this.nif = nif;
    }

    public void setMorada(String morada) {
        this.morada = morada;
    }

    public void setNrEncomenda(Integer nrEncomenda) {
        this.nrEncomenda = nrEncomenda;
    }

    public void setData(LocalDateTime data) {
        this.data = data;
    }

    // Métodos específicos
    public double calculaValorTotal() {
        double total = 0.0;
        for (LinhaEncomenda linha : this.linhasEncomenda) {
            total += linha.calculaValorLinhaEnc();
        }
        return total;
    }

    public double calculaValorDesconto() {
        double totalDesconto = 0.0;
        for (LinhaEncomenda linha : this.linhasEncomenda) {
            totalDesconto += linha.calculaValorDesconto();
        }
        return totalDesconto;
    }

    public int numeroTotalProdutos() {
        int total = 0;
        for (LinhaEncomenda linha : this.linhasEncomenda) {
            total += linha.getQuantidade();
        }
        return total;
    }

    public boolean existeProdutoEncomenda(String refProduto) {
        for (LinhaEncomenda linha : this.linhasEncomenda) {
            if (linha.getReferencia().equals(refProduto)) {
                return true;
            }
        }
        return false;
    }

    public void adicionaLinha(LinhaEncomenda linha) {
        this.linhasEncomenda.add(linha.clone());
    }

    public void removeProduto(String codPro) {
        this.linhasEncomenda.removeIf(linha -> linha.getReferencia().equals(codPro));
    }

    @Override
    public Encomenda clone() {
        return new Encomenda(this);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Encomenda outra = (Encomenda) o;

        if (!this.cliente.equals(outra.getCliente())) return false;
        if (!this.nif.equals(outra.getNif())) return false;
        if (!this.morada.equals(outra.getMorada())) return false;
        if (!this.nrEncomenda.equals(outra.getNrEncomenda())) return false;
        if (!this.data.equals(outra.getData())) return false;

        if (this.linhasEncomenda.size() != outra.getLinhasEncomenda().size()) return false;

        for (int i = 0; i < this.linhasEncomenda.size(); i++) {
            if (!this.linhasEncomenda.get(i).equals(outra.getLinhasEncomenda().get(i))) return false;
        }

        return true;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Encomenda{")
          .append("cliente='").append(cliente).append('\'')
          .append(", nif=").append(nif)
          .append(", morada='").append(morada).append('\'')
          .append(", nrEncomenda=").append(nrEncomenda)
          .append(", data=").append(data)
          .append(", linhas=[\n");

        for (LinhaEncomenda linha : linhasEncomenda) {
            sb.append("  ").append(linha.toString()).append("\n");
        }

        sb.append("]}");
        return sb.toString();
    }
}