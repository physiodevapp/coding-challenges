import java.util.Scanner;

public class MultiplicationTable {
  /*
     * Multiplication Table Program
     *
     * This Java program generates a multiplication table for any number entered 
     * by the user, demonstrating the use of loops and formatted output in Java.
     *
     * Features:
     * - Accepts user input for the number to generate the table.
     * - Uses a 'for' loop to calculate and print the first 10 multiples 
     *   of the given number.
     * - Displays results in a readable format using System.out.printf 
     *   for cleaner output.
     *
     * Sample Output:
     * Enter a number to generate its multiplication table: 5
     * Multiplication Table for 5:
     * 5 x 1 = 5
     * 5 x 2 = 10
     * 5 x 3 = 15
     * ...
     * 5 x 10 = 50
     */
  
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter a number to generate its multiplication table: ");
    int number = scanner.nextInt();

    System.out.println("Multiplication table for " + number + ": ");
    for (int i = 1; i <= 10; i++) {
      int result = number * i;
      System.out.printf("%d x %d = %d%n", number, i, result);
    }

    scanner.close();
  }
}
