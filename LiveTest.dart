void main() {
  // Sample list of fruits
  List<Map<String, dynamic>> fruits = [
    {
      'name': 'Apple',
      'color': 'Red',
      'price': 2.5,
    },
    {
      'name': 'Banana',
      'color': 'Yellow',
      'price': 1.0,
    },
    {
      'name': 'Grapes',
      'color': 'Purple',
      'price': 3.0,
    },
  ];

  // Display original fruit details
  displayFruitDetails(fruits, "Original Fruit Details before Discount:");

  // Apply 10% discount
  final discount = 0.1;
  applyPriceDiscount(fruits, discount);

  // Display fruit details after discount
  displayFruitDetails(fruits, "Fruit Details After Applying $discount Discount:");
}

void displayFruitDetails(List<Map<String, dynamic>> fruits, String title) {
  print(title);
  for (final fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
  print("");
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discount) {
  for (final fruit in fruits) {
    fruit['price'] = fruit['price'] * 0.9;
  }
}