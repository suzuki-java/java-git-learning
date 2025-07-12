public class ArraySample {
    public static void main(String[] args) {
        int[] scores = { 70, 85, 90, 100 };

        System.out.println("通常の for 文 :");
        for (int i = 0; i < scores.length; i++) {
            System.out.println("拡張 for 文 :");
            for (int score : scores) {
                System.out.println("得点 :" + score);
            }
        }
    }
}
