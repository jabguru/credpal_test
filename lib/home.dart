import 'package:credpal_test/constants/colors.dart';
import 'package:credpal_test/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: kHeaderColor,
        elevation: 0.0,
      ),
      body: const Column(
        children: [
          HomeHeader(),
        ],
      ),
    );
  }
}
