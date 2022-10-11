import 'package:flutter/material.dart';

class Category {
  final String? name;
  final String? image;

  Category({
    required this.name,
    required this.image,
  });

  static final category = [
    Category(name: "Restaurant & Cafe", image: "image"),
    Category(name: "Fashion & Perfumes", image: "image"),
    Category(name: "Sweets & Flowers", image: "image"),
    Category(name: "nanameme", image: "image"),
  ];
}
