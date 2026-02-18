
public class CarroCombustao extends Carro {
    private double tamanhoDeposito; // em litros
    private double consumoLitros100Km;
    private double precoLitro;

    public CarroCombustao(String codigoIdentificacao, String marca, String modelo, int anoConstrucao, double velocidadeMediaKm, double autonomia, double kmsTotais, double tamanhoDeposito, double consumoLitros100Km, double precoLitro) {
        super(codigoIdentificacao, marca, modelo, anoConstrucao, velocidadeMediaKm, autonomia, kmsTotais);
        this.tamanhoDeposito = tamanhoDeposito;
        this.consumoLitros100Km = consumoLitros100Km;
        this.precoLitro = precoLitro;
    }

    @Override
    public double calcularCustoPorKm() {
        return (consumoLitros100Km / 100) * precoLitro;
    }

    @Override
    public void reabastecer() {
        // Atualiza a autonomia usando o setter da classe base
        this.setAutonomia((tamanhoDeposito / consumoLitros100Km) * 100);
    }
}