import java.util.Scanner;

public class Aula {
    public static void main(String[] args) {
       
        try (Scanner scanner = new Scanner(System.in)) {
            // Entrada do tamanho do array
            System.out.print("tamanho do array: ");
            int size = scanner.nextInt();

            int[] array = new int[size]; //Cria um array de inteiros chamado array com um tamanho especificado pelo usuário (size)

            // Entrada dos valores do array
            System.out.println("Põe os valores que queres que estejam no array:");
            for (int i = 0; i < size; i++) { //A variável i representa a posição atual no array
                System.out.print("Posição " + (i ) + ": "); 
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
                System.out.println("Índices inválidos. Provavelmente puseste índices fora da posição do array");
            }
        }
    }
}
