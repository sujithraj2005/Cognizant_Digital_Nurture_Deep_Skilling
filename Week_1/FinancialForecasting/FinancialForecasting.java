public class FinancialForecasting{
    
     public static double futureValue(double currentValue, double growthRate, int years) {
        if (years == 0) return currentValue;
        return (1 + growthRate) * futureValue(currentValue, growthRate, years-1);
    }

    public static void main(String[] args) {

        double currentValue = 10000;
        double growthRate = 0.05;
        int years = 3;

        double forecast = futureValue(currentValue, growthRate, years);

        System.out.printf("Predicted Value after %d years: %.2f", years, forecast);
    }
}