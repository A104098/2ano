
import java.util.ArrayList;
import java.util.List;

public class CarRental {
    private List<Carro> frota;

    public CarRental() {
        this.frota = new ArrayList<>();
    }

    public void adicionarCarro(Carro carro) {
        frota.add(carro);
    }

    public List<Carro> getFrota() {
        return frota;
    }

    public double calcularCustoRealPorKm(Carro carro) {
        return carro.calcularCustoPorKm() * 1.15; // Acresce 15% ao custo por km
    }
}