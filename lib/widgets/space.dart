import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  final double space;
  const HorizontalSpace(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: space,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  final double space;
  const VerticalSpace(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space,
    );
  }
}
