import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/widgets/space.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kHeaderColor,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Flexible(
                  child: Text(
                    'Pay later\neverywhere',
                    style: TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w900,
                      color: kAppBlackColor,
                      height: 1.3,
                    ),
                  ),
                ),
                const HorizontalSpace(8.0),
                Transform.translate(
                  offset: const Offset(0, -14),
                  child: const CircleAvatar(
                    radius: 8.5,
                    backgroundColor: kWhiteColor,
                    child: Text(
                      '!',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                        color: kLightPurpleColor2,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const HorizontalSpace(16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      color: kDarkPurpleColor,
                      fontFamily: 'Avenir',
                    ),
                    children: [
                      TextSpan(
                        text: 'Shopping limit: ',
                      ),
                      TextSpan(
                          text: '₦',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                          )),
                      TextSpan(
                        text: '0',
                      ),
                    ]),
              ),
              const VerticalSpace(8.0),
              const ActivateCreditButton()
            ],
          )
        ],
      ),
    );
  }
}

class ActivateCreditButton extends StatelessWidget {
  const ActivateCreditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: const Text(
        'Activate Credit',
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: 'Axiforma',
          fontWeight: FontWeight.w700,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
