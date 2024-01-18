class ProductCard {
  final String name;
  final String description;
  final String image;
  final double price;

  ProductCard({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
  });

  factory ProductCard.fromJson(Map<String, dynamic> json) {
    return ProductCard(
      name: json['name'],
      description: json['description'],
      image: json['image'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'image': image,
      'price': price,
    };
  }

  // ProductCard copyWith({
  //   String? name,
  //   String? description,
  //   String? image,
  //   double? price,
  // }) {
  //   return ProductCard(
  //     name: name ?? this.name,
  //     description: description ?? this.description,
  //     image: image ?? this.image,
  //     price: price ?? this.price,
  //   );
  // }
}
