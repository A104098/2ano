
public class CarroElectrico extends Carro {
    private int tamanhoBateria; // em kWh
    private double consumoKWh100Km;
    private double precoKWh;

    public CarroElectrico(String codigoIdentificacao, String marca, String modelo, int anoConstrucao, double velocidadeMediaKm, double autonomia, double kmsTotais, int tamanhoBateria, double consumoKWh100Km, double precoKWh) {
        super(codigoIdentificacao, marca, modelo, anoConstrucao, velocidadeMediaKm, autonomia, kmsTotais);
        this.tamanhoBateria = tamanhoBateria;
        this.consumoKWh100Km = consumoKWh100Km;
        this.precoKWh = precoKWh;
    }

    @Override
    public double calcularCustoPorKm() {
        return (consumoKWh100Km / 100) * precoKWh;
    }

    @Override
    public void reabastecer() {
        // Atualiza a autonomia usando o setter da classe base
        this.setAutonomia((tamanhoBateria / consumoKWh100Km) * 100);
    }
}