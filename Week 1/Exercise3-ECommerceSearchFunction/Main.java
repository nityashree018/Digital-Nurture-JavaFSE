public class Main {

    public static void main(String[] args) {

        Product[] products = {

                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Phone", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Bag", "Fashion")

        };

        // Linear Search
        Product result1 = SearchFunctions.linearSearch(products, "Watch");

        if (result1 != null) {
            System.out.println("Linear Search Found : " + result1.productName);
        } else {
            System.out.println("Product not found.");
        }

        // Binary Search
        Product result2 = SearchFunctions.binarySearch(products, "Watch");

        if (result2 != null) {
            System.out.println("Binary Search Found : " + result2.productName);
        } else {
            System.out.println("Product not found.");
        }
    }
}