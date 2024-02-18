import 'package:flutter/material.dart';

class Merchant {
  final String name;
  final String image;
  final Color color;
  final bool isOnline;
  Merchant({
    required this.name,
    required this.image,
    required this.color,
    this.isOnline = false,
  });
}
