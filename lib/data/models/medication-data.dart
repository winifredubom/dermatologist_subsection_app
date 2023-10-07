class Drug {
  final String name;
  final String gramMilligram;
  late final int pills;
  final String imagePath;
  final String price;

  Drug({
    required this.name,
    required this.gramMilligram,
    required this.pills,
    required this.imagePath,
    required this.price
  });
}

List<Drug> medications = [
  Drug(
    name: "Tamiflu",
    gramMilligram: "500mg",
    pills: 30,
    imagePath: "lib/assets/images/tamiflu.jpg",
    price: '#4000'
  ),
  Drug(
    name: "Antibiotics",
    gramMilligram: "250mg",
    pills: 60,
    imagePath: "lib/assets/images/antibiotics.jpg",
      price: '#4000'
  ),
  Drug(
    name: "Backpain",
    gramMilligram: "750mg",
    pills: 20,
    price: '#4000',
    imagePath: "lib/assets/images/backpain.jpg",
  ),
  Drug(
    name: "Anti-inflammatory",
    gramMilligram: "300mg",
    pills: 40,
    price: '#4000',
    imagePath: "lib/assets/images/anti-inflammatory.jpg",
  ),
];