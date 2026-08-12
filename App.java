public class App {
    public static void main(String[] args) {
        System.out.println("🚀 Java container is running!");
        System.out.println("Waiting for shutdown signal...");

        // Keep the application running
        try {
            Thread.sleep(Long.MAX_VALUE);
        } catch (InterruptedException e) {
            System.out.println("🛑 Java container stopped.");
        }
    }
}
