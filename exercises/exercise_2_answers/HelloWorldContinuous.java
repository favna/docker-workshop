public class HelloWorldContinuous {
    public static void main(String[] args) throws InterruptedException {
        while(true){
            System.out.println("Hello World");
            Thread.sleep(1000);
        }
    }
}
