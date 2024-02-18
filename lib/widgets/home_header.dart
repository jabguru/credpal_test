import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/widgets/space.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final bool isCollapsed;
  const HomeHeader({
    super.key,
    this.isCollapsed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kHeaderColor,
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: 20, vertical: isCollapsed ? 20 : 40),
      child: isCollapsed ? const CollapsedHeader() : const FullHeader(),
    );
  }
}

class CollapsedHeader extends StatelessWidget {
  const CollapsedHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              Flexible(
                child: Text(
                  'Pay later everywhere',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                    color: kAppBlackColor,
                    height: 1.3,
                  ),
                ),
              ),
              HorizontalSpace(8.0),
              InfoIndicator()
            ],
          ),
        ),
        HorizontalSpace(8.0),
        ActivateCreditButton(),
      ],
    );
  }
}

class FullHeader extends StatelessWidget {
  const FullHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
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
                child: const InfoIndicator(),
              )
            ],
          ),
        ),
        const HorizontalSpace(16.0),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ShoppingLimit(),
            VerticalSpace(8.0),
            ActivateCreditButton()
          ],
        )
      ],
    );
  }
}

class InfoIndicator extends StatelessWidget {
  const InfoIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 8.5,
      backgroundColor: kGreyColor3,
      child: Text(
        '!',
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.w700,
          color: kLightPurpleColor2,
        ),
      ),
    );
  }
}

class ShoppingLimit extends StatelessWidget {
  const ShoppingLimit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
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
