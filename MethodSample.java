public class MethodSample {
    public static void main(String[] args) {
        greet("祐清"); // メソッド呼び出し
        greet("海生");
    }

    // メソッド定義（String型の引数nameを受け取る）
    public static void greet(String name) {
        System.out.println("こんにちは、" + name + "さん！");
    }
}
