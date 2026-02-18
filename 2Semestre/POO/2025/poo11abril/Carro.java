
// Classe base Carro
public abstract class Carro {
    private String codigoIdentificacao; // poderá ser a matrícula
    private String marca;
    private String modelo;
    private int anoConstrucao;
    private double velocidadeMediaKm;
    private double autonomia; // em km
    private double kmsTotais;

    // Construtor da classe base Carro
    public Carro(String codigoIdentificacao, String marca, String modelo, int anoConstrucao, double velocidadeMediaKm, double autonomia, double kmsTotais) {
        this.codigoIdentificacao = codigoIdentificacao;
        this.marca = marca;
        this.modelo = modelo;
        this.anoConstrucao = anoConstrucao;
        this.velocidadeMediaKm = velocidadeMediaKm;
        this.autonomia = autonomia;
        this.kmsTotais = kmsTotais;
    }

    // Método abstrato para calcular o custo por km
    public abstract double calcularCustoPorKm();

    // Método para registrar uma viagem
    public void registarViagem(double kms) {
        if (kms > autonomia) {
            throw new IllegalArgumentException("Autonomia insuficiente para a viagem.");
        }
        autonomia -= kms;
        kmsTotais += kms;
    }

    // Método para resetar os kms parciais
    public void resetKmsParciais() {
        this.kmsTotais = 0;
    }

    // Método abstrato para reabastecer
    public abstract void reabastecer();

    // Getters e Setters
    public String getCodigoIdentificacao() {
        return codigoIdentificacao;
    }

    public void setCodigoIdentificacao(String codigoIdentificacao) {
        this.codigoIdentificacao = codigoIdentificacao;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getAnoConstrucao() {
        return anoConstrucao;
    }

    public void setAnoConstrucao(int anoConstrucao) {
        this.anoConstrucao = anoConstrucao;
    }

    public double getVelocidadeMediaKm() {
        return velocidadeMediaKm;
    }

    public void setVelocidadeMediaKm(double velocidadeMediaKm) {
        this.velocidadeMediaKm = velocidadeMediaKm;
    }

    public double getAutonomia() {
        return autonomia;
    }

    public void setAutonomia(double autonomia) {
        this.autonomia = autonomia;
    }

    public double getKmsTotais() {
        return kmsTotais;
    }

    public void setKmsTotais(double kmsTotais) {
        this.kmsTotais = kmsTotais;
    }
}

public boolean existeCarro(String cod) {
    return this.codigoIdentificacao.equals(cod);
}