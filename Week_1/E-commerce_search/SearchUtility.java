import java.util.Arrays;
class SearchUtility{
    public static Product linearSearch(Product p[], int id){
        for(int i=0;i<p.length;i++){
            if(p[i].productId==id){
                return p[i];
            } 
        }
        return null;
    }

    public static Product binarySearch(Product []p, int id){
        int low = 0,high = p.length-1;
        Arrays.sort(p,(a,b)->{
           return a.productId - b.productId;
        });
        while(low<=high){
            int mid = (low+high)/2;
            if(p[mid].productId==id) return p[mid];
            else if(p[mid].productId>id)  high = mid-1;
            else low = mid+1;
        }
        return null;
    }
}