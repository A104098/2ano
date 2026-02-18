import java.util.Scanner;

public class MainClass {
    public static void main(String[] args) {
        // Utilizando try-with-resources para garantir o fechamento do Scanner
        try (Scanner scanner = new Scanner(System.in)) {
            // Entrada do tamanho do array
            System.out.print("Digite o tamanho do array: ");
            int size = scanner.nextInt();

            int[] array = new int[size];

            // Entrada dos valores do array
            System.out.println("Digite os valores do array:");
            for (int i = 0; i < size; i++) {
                System.out.print("Valor " + (i + 1) + ": ");
                array[i] = scanner.nextInt();
            }

            // Entrada dos índices
            System.out.print("Digite o índice inicial: ");
            int startIndex = scanner.nextInt();

            System.out.print("Digite o índice final: ");
            int endIndex = scanner.nextInt();

            // Verificar índices e exibir subarray
            if (startIndex >= 0 && endIndex < size && startIndex <= endIndex) {
                System.out.print("Subarray entre os índices " + startIndex + " e " + endIndex + ": ");
                for (int i = startIndex; i <= endIndex; i++) {
                    System.out.print(array[i] + " ");
                }
            } else {
                System.out.println("Índices inválidos. Certifique-se de que estão dentro dos limites.");
            }
        }
    }
}
