import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/widgets/home_header.dart';
import 'package:credpal_test/widgets/search_products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ? Close keyboard
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: kHeaderColor,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            const HomeHeader(),
            const SearchProducts(),
            Container(
              width: double.infinity,
              color: kLightPurpleColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
