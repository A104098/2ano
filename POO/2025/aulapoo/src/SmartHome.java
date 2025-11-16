import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

public class SmartHome{
    private List<Lampada> lamps;
    public void addLamp(Lampada l){
        this.lamps.add(l.clone());
    }

    public void turnOnLamp (int index){
        this.lamps.get(index).lampON();
    }

    public void turnEcoLamp (int index){
        this.lamps.get(index).lampECO();
    }

    public int quantasEmModoECO{
        return (int) this.lamps.stream().filter(l -> l.getModo() == ModoLampada.ECO).count();
    }
}