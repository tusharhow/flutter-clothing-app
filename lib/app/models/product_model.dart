import 'package:flutter/material.dart';

class Product {
  int id;
  String name;
  String image;
  String price;
  Color color;
  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.color,
  });
}
