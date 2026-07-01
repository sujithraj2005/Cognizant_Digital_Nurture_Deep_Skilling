public class Main{
    public static void main(String []args){
        Product []p = {
            new Product(101, "Laptop", "Electronics"),
            new Product(102, "Mobile", "Electronics"),
            new Product(106, "Shirt", "Fashion"),
            new Product(104, "Watch", "Accessories"),
            new Product(103, "Shoes", "Fashion"),
            new Product(107, "PS5","Electronics"),
            new Product(105, "Headphones", "Electronics")
        };

        Product p1 = SearchUtility.linearSearch(p, 104);
        Product p2 = SearchUtility.linearSearch(p, 109);

        Product p3 = SearchUtility.binarySearch(p, 105);
        Product p4 = SearchUtility.binarySearch(p, 109);

        System.out.println((p1!=null)?"Product Found":"Couldn't find the product");
        System.out.println((p2!=null)?"Product Found":"Couldn't find the product");
        System.out.println((p3!=null)?"Product Found":"Couldn't find the product");
        System.out.println((p4!=null)?"Product Found":"Couldn't find the product");
    }
}