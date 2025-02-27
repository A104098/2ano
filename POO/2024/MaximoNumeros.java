import java.util.Scanner;

public class MaximoNumeros {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); //Criação de um objeto Scanner chamado scanner para ler a entrada do usuário
        // Ler primeiro valor int
        System.out.print("o teu primeiro número inteiro: ");
        int num1 = scanner.nextInt(); //Utiliza o Scanner para ler o próximo valor inteiro inserido pelo usuário e armazena na variável num1
        //ler segundo valor int
        System.out.print("o teu segundo número inteiro: ");
        int num2 = scanner.nextInt(); //utiliza-se para ler o proximo valor inteiro inserido e armazena na variavel num2.

        // Invocar o método maximoNumeros para determinar o máximo
        int maximo = maximoNumeros(num1, num2);

        // Imprimir o resultado
        System.out.println("O máximo entre " + num1 + " e " + num2 + " é: " + maximo); //imprime a "linha" 
    }

    // Método para determinar o máximo entre dois números inteiros
    public static int maximoNumeros(int a, int b) {
        return Math.max(a, b); //função que determina o máximo entre 2 números
    }
}
