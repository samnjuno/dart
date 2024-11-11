void main() {
  // Sample list of item prices
  List<double> itemPrices = [15.99, 5.49, 25.00, 9.99, 49.99];

  // Filter out items under $10 using an anonymous function
  var filteredPrices = itemPrices.where((price) => price >= 10).toList();
  print("Filtered prices (items >= \$10): $filteredPrices");

  // Calculate total with an optional tax parameter
  double total = calculateTotal(filteredPrices, tax: 0.08);
  print("Total price after tax: \$${total.toStringAsFixed(2)}");

  // Apply discount to the total price
  double discountedTotal =
      applyDiscount(filteredPrices, (price) => price * 0.9);
  print(
      "Total price after applying discount: \$${discountedTotal.toStringAsFixed(2)}");

  // Calculate special discount using recursive function
  double specialDiscount = calculateFactorialDiscount(filteredPrices.length);
  double finalPrice =
      discountedTotal - (discountedTotal * (specialDiscount / 100));
  print(
      "Final price after special discount: \$${finalPrice.toStringAsFixed(2)}");
}

// Standard function to calculate the total price with optional tax
double calculateTotal(List<double> prices, {double tax = 0}) {
  double total = prices.reduce((a, b) => a + b);
  return total + (total * tax);
}

// Higher-order function to apply a discount
double applyDiscount(
    List<double> prices, double Function(double) discountFunction) {
  return prices.map(discountFunction).reduce((a, b) => a + b);
}

// Recursive function to calculate factorial discount
double calculateFactorialDiscount(int n) {
  if (n <= 1) return 1; // Base case
  return n * calculateFactorialDiscount(n - 1); // Recursive call
}
