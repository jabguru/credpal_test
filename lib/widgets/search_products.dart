import 'package:credpal_test/constants/assets.dart';
import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/widgets/space.dart';
import 'package:flutter/material.dart';

class SearchProducts extends StatelessWidget implements PreferredSizeWidget {
  const SearchProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: TextField(
                style: const TextStyle(
                  fontSize: 12.0,
                  color: kAppBlackColor,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: kLightPurpleColor.withOpacity(0.8),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  isDense: true,
                  hintText: 'Search for products or stores',
                  hintStyle: const TextStyle(
                    fontSize: 12.0,
                    color: kTextFieldTextColor,
                  ),
                  prefixIconConstraints:
                      BoxConstraints.tight(const Size(43.0, 18.0)),
                  prefixIcon: Row(
                    children: [
                      const HorizontalSpace(
                        15.0,
                      ),
                      Image.asset(
                        Assets.searchIcon,
                        width: 18.0,
                        height: 18.0,
                      ),
                      const HorizontalSpace(
                        10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const HorizontalSpace(20.0),
          Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kScannerBgColor,
            ),
            child: Center(
              child: Image.asset(
                Assets.scan,
                width: 24.0,
                height: 24.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(85.0);
}
