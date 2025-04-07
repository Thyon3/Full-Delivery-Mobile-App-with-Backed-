class Food {
  final String name;
  final String description;
  final double price;
  final String imagePath;
  Category category;
  List<AddOns> availableAddOns;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.category,
    required this.availableAddOns,
  });
}

enum Category { burger, sides, drink, desserts, salad }

class AddOns {
  final String name;
  final double price;

  AddOns({required this.name, required this.price});
}
