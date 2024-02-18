import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/widgets/featured_merchants.dart';
import 'package:credpal_test/widgets/home_header.dart';
import 'package:credpal_test/widgets/products_list.dart';
import 'package:credpal_test/widgets/search_products.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ? Close keyboard when any part of the scaffold is tapped
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
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                pinned: true,
                backgroundColor: kHeaderColor,
                elevation: 0.0,
                collapsedHeight: 77.0,
                expandedHeight: 240.0,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return HomeHeader(isCollapsed: constraints.maxHeight < 230);
                  },
                ),
                bottom: const SearchProducts(),
              ),
            ];
          },
          body: const SingleChildScrollView(
            child: Column(
              children: [
                ProductsList(),
                FeaturedMerchants(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
