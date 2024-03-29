public class Question {
    public static void main(String args[]) {
        int f = 0, g = 1;
        for(int i = 0; i <= 5; i++) {
            System.out.println(f);
            f = f + g;
            g = f - g;
        }
        // char nptel[] = {'S','W','A','Y','A','M'};
        // System.out.print(nptel[nptel.length-2]);
    }
}
