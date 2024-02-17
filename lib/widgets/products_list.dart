import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/constants/products.dart';
import 'package:credpal_test/widgets/products_grid.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 408.0,
      color: kLightPurpleColor,
      padding: const EdgeInsets.fromLTRB(
        20.0,
        12.0,
        13.0,
        12.0,
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: kAllProducts.length ~/ 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return ProductsGridWidget(
            product1: kAllProducts[index * 4],
            product2: kAllProducts[index * 4 + 1],
            product3: kAllProducts[index * 4 + 2],
            product4: kAllProducts[index * 4 + 3],
          );
        }),
      ),
    );
  }
}
