import java.lang.Math;
public class Ficha1 {
    //1
    public double celsiusParaFarenheit(double graus) {
        return graus * 9/5 + 32;
    }

    public double farenheitParaCelsius(double graus) { // se fosse privado, já não conseguia chamar o método na classe Main
        return (graus - 32) * 5/9;
    }
//2
    public int maximoNumeros(int a, int b) {
        if (a > b) {
            return a;
        } else {
            return b;
        }
    }
    
    public int maximoNumeros2(int a, int b){
        return Math.max(a, b);
        }
    public int maximoNumeros3(int a, int b){
        return a > b ? a : b;
    }

//3
    public String criaDescricaoConta(String nome, double saldo) {
        return "Nome: " + nome + ", Saldo: " + saldo; //output exemplo : Nome: Eduarda, Saldo: 20
    }
//4
    public double eurosParaLibras(double valor, double taxaConversao) {
        return valor * taxaConversao;
    }
//5
    public int[] mediaDecrescente(int a, int b) { //devolve um array de inteiros
        int maior, menor;
        if (a > b) {
            maior = a;
            menor = b;
        } else {
            maior = b;
            menor = a;
        }
        int media = (maior + menor) / 2;
        return new int[] {media, maior, menor};
    //outra opção em vez de fazer ciclo if else
    }
    public int[] mediaDecrescente2(int a, int b){
        int maior, menor;
        maior = Math.max(a, b);
        menor = Math.min(a, b);
        int media = (maior + menor) / 2;
        return new int[] {media, maior, menor};
    }
    //6 (3!=3*2*1)
    public long factorial(int num){
        long fact = 1;
        for (int i = 1; i <= num; i++){
            fact *= i;
        }
        return fact;

    }
    //7 pergunta shitty

    public long tempoGasto(){
        long inicio = System.currentTimeMillis();
        long fact = 1;
        for (int i = 1; i <= 5000; i++){
            fact *= i;
        }
        long fim = System.currentTimeMillis();
        return fim - inicio;
    }


}

