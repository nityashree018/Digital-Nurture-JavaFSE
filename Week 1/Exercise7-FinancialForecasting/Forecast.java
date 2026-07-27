public class Forecast {

    // Recursive method to predict future value
    public static double predictFutureValue(double currentValue, double growthRate, int years) {

        // Base case
        if (years == 0) {
            return currentValue;
        }

        // Recursive case
        return predictFutureValue(currentValue * (1 + growthRate), growthRate, years - 1);
    }
}