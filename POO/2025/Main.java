import java.util.Scanner;
public class Main{
    public int[] readArray(Scannner scanner){
        System.out.printf("Quantos elementos terá o array? ");
        int size = scanner.nextInt();
        int[] array = new int[size];

        for(int i = 0; i < size; i++){
            System.out.printf("Digite o %dº elemento: ", i+1);
            array[i] = scanner.nextInt();
        }

        scanner.nextLine();
        return array;

    }

        public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Digite o array:");
        int exercise = scanner.nextInt();

        
    }
}