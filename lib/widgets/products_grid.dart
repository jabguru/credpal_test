import 'package:credpal_test/entities/product.dart';
import 'package:credpal_test/widgets/product_widget.dart';
import 'package:credpal_test/widgets/space.dart';
import 'package:flutter/material.dart';

class ProductsGridWidget extends StatelessWidget {
  final Product product1;
  final Product product2;
  final Product product3;
  final Product product4;
  const ProductsGridWidget({
    Key? key,
    required this.product1,
    required this.product2,
    required this.product3,
    required this.product4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ProductWidget(
              product: product1,
            ),
            ProductWidget(
              product: product2,
            ),
          ],
        ),
        const VerticalSpace(24.0),
        Row(
          children: [
            ProductWidget(
              product: product3,
            ),
            ProductWidget(
              product: product4,
            ),
          ],
        ),
      ],
    );
  }
}
