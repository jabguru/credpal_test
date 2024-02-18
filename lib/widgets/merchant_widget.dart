import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/entities/merchant.dart';
import 'package:credpal_test/widgets/space.dart';
import 'package:flutter/material.dart';

class Merchantwidget extends StatelessWidget {
  final Merchant merchant;
  const Merchantwidget({
    Key? key,
    required this.merchant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 77.0,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: merchant.color,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(merchant.image),
                ),
              ),
              if (merchant.isOnline)
                Positioned(
                  right: 4.0,
                  child: Container(
                    width: 11.0,
                    height: 11.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.5),
                      color: kGreenColor,
                      border: Border.all(
                        color: kWhiteColor,
                        width: 3.0,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                  ),
                )
            ],
          ),
          const VerticalSpace(5.0),
          Text(
            merchant.name,
            style: TextStyle(
              fontSize: merchant.name.length < 14 ? 12.0 : 10,
              fontWeight: FontWeight.w500,
              color: kAppBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
