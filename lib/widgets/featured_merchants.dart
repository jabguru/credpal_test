import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/constants/merchants.dart';
import 'package:credpal_test/widgets/merchant_widget.dart';
import 'package:credpal_test/widgets/space.dart';
import 'package:flutter/material.dart';

class FeaturedMerchants extends StatelessWidget {
  const FeaturedMerchants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 33.0,
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Merchants',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w900,
                  color: kAppBlackColor2,
                ),
              ),
              HorizontalSpace(16.0),
              Text(
                'View all',
                style: TextStyle(
                    fontSize: 12.0,
                    color: kPrimaryColor,
                    fontFamily: 'Product Sans'),
              ),
            ],
          ),
          const VerticalSpace(37.0),
          Wrap(
            spacing: 14.0,
            runSpacing: 30.0,
            children: kAllMerchants
                .map(
                  (e) => Merchantwidget(
                    merchant: e,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
