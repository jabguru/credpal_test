import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/constants/decorations.dart';
import 'package:credpal_test/entities/product.dart';
import 'package:credpal_test/widgets/space.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final Product product;
  const ProductWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 161.0,
          height: 180.0,
          margin: const EdgeInsets.only(
            right: 24.0,
          ),
          padding: const EdgeInsets.fromLTRB(
            10.0,
            5.0,
            10.0,
            14.0,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: kShadow,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  product.image,
                  width: 112.0,
                ),
              ),
              const VerticalSpace(13.0),
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w800,
                  color: kAppBlackColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const VerticalSpace(8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                        color: kPrimaryColor,
                        fontFamily: 'Avenir',
                      ),
                      children: [
                        const TextSpan(
                            text: '₦',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            )),
                        TextSpan(
                          text: ' ${product.price}',
                        ),
                      ],
                    ),
                  ),
                  const HorizontalSpace(5.0),
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: kGreyColor2,
                        decoration: TextDecoration.lineThrough,
                        fontFamily: 'Avenir',
                      ),
                      children: [
                        const TextSpan(
                            text: '₦',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            )),
                        TextSpan(
                          text: ' ${product.slashedPrice}',
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          left: 7.0,
          top: 6.0,
          child: Container(
            width: 50.0,
            height: 50.0,
            padding: const EdgeInsets.all(4.0),
            // padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: kShadow,
            ),
            child: Center(
              child: product.merchantImage != null
                  ? Image.asset(product.merchantImage!)
                  : RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: 'Pay\n',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                              color: kGreyColor,
                              fontFamily: 'Avenir',
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: '${product.percentOff}%',
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w800,
                              color: kPrimaryColor,
                              fontFamily: 'Avenir',
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        )
      ],
    );
  }
}
