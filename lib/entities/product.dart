class Product {
  final String name;
  final String image;
  final String price;
  final String slashedPrice;
  final String? merchantImage;
  final int? percentOff;
  Product({
    required this.name,
    required this.image,
    required this.price,
    required this.slashedPrice,
    this.merchantImage,
    this.percentOff,
  });
}
