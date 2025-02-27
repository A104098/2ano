/*
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
//to run : java poo1.java
//output : Hello, World!


System.out.println("a minha idade é" %d/n, id); // o %d seria substituido pelo valor de id e o /n é para adicionar linha
//...
Ficha1 f = new Ficha1(); //criar um objeto da classe Ficha1
//...
*/
import java.util.Scanner; // tem o let

public class Main {
    public static void main(String[] args) {
        Scanner let = new Scanner(System.in);
        Ficha1 f = new Ficha1();


        //1

        /*System.out.println("Introduza a temperatura em graus Celsius: ");
        double graus = let.nextDouble();   
        double farenheit = f.celsiusParaFarenheit(graus);  // chamamos o método celsiusParaFarenheit da classe Ficha1
        System.out.println("A temperatura em graus Farenheit é: " + farenheit);

        //3

        System.out.println ("Diz o teu nome: " );
        String nome = let.nextLine();
        System.out.println ("Diz o teu saldo: " );
        double saldo = let.nextDouble();
        System.out.println(f.criaDescricaoConta(nome, saldo));

        //4
        System.out.println("Introduza o valor em euros: ");
        double valor = let.nextDouble(); //le o valor em euros introduzido e armazena na variável valor
        System.out.println("Introduza a taxa de conversão: ");
        double taxa = let.nextDouble(); //estrutura do let é sempre "let.nextB" onde B é o tipo de variável que queremos ler
        double taxaConversao = f.eurosParaLibras(valor, taxa);
        System.out.println("O valor em libras é: " + taxaConversao);


        //5
        System.out.println("Introduza o primeiro número: ");
        int a = let.nextInt();
        System.out.println("Introduza o segundo número: ");
        int b = let.nextInt();
        int[] resultado = f.mediaDecrescente2(a, b); //ou f.mediaDecrescente(a, b);
        System.out.println("A média dos números é: " + resultado[0]);
        System.out.println("A ordem decrescente dos números é: " + resultado[1] + ", " + resultado[2]); //neste caso dá para fazer assim porque são só 2 números


        //6
        System.out.println("Introduza um número: ");
        int num = let.nextInt();
        long fact = f.factorial(num);
        System.out.println("" + num + "! = " + fact);
        
*/
    //7
    long tempo = f.tempoGasto();
    System.out.println("Tempo gasto: " + tempo + " milissegundos");
    
    let.close();
    }

    
}
