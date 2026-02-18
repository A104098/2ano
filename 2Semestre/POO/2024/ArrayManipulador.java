import java.util.Scanner;

class ArrayManipulator {
    private int[] array;

    // Construtor para inicializar o array
    public ArrayManipulator(int[] array) {
        this.array = array;
    }

    // Método para obter subarray entre dois índices
    public int[] getSubArray(int startIndex, int endIndex) {
        // Verifica se os índices são válidos
        if (startIndex < 0 || endIndex >= array.length || startIndex > endIndex) {
            System.out.println("Índices inválidos. Certifique-se de que estão dentro dos limites.");
            return null;
        }

        int subArrayLength = endIndex - startIndex + 1;
        int[] subArray = new int[subArrayLength];

        // Preenche o subarray com os valores entre os índices
        for (int i = 0; i < subArrayLength; i++) {
            subArray[i] = array[startIndex + i];
        }

        return subArray;
    }
}

public class MainClass {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

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

        // Criar instância da classe ArrayManipulator
        ArrayManipulator arrayManipulator = new ArrayManipulator(array);

        // Entrada dos índices
        System.out.print("Digite o índice inicial: ");
        int startIndex = scanner.nextInt();

        System.out.print("Digite o índice final: ");
        int endIndex = scanner.nextInt();

        // Obter e imprimir o subarray
        int[] subArray = arrayManipulator.getSubArray(startIndex, endIndex);
        if (subArray != null) {
            System.out.print("Subarray entre os índices " + startIndex + " e " + endIndex + ": ");
            for (int value : subArray) {
                System.out.print(value + " ");
            }
        }

        scanner.close();
    }
}
