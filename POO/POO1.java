import java.util.Scanner;

public class MaximoNumeros {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Ler dois valores inteiros
        System.out.print("Digite o primeiro número inteiro: ");
        int num1 = scanner.nextInt();

        System.out.print("Digite o segundo número inteiro: ");
        int num2 = scanner.nextInt();

        // Invocar o método maximoNumeros para determinar o máximo
        int maximo = maximoNumeros(num1, num2);

        // Imprimir o resultado
        System.out.println("O máximo entre " + num1 + " e " + num2 + " é: " + maximo);
    }

    // Método para determinar o máximo entre dois números inteiros
    public static int maximoNumeros(int a, int b) {
        return Math.max(a, b);
    }
}
