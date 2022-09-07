import 'package:flutter/material.dart';

class Category {
  int id;
  String categoryName;
  IconData icon;

  Category({
    required this.id,
    required this.categoryName,
    required this.icon,
  });
}

var categoryList = [
  Category(id: 1, categoryName: 'Coding', icon: Icons.code),
  Category(id: 2, categoryName: 'Networking', icon: Icons.network_check),
  Category(id: 3, categoryName: 'Design', icon: Icons.brush),
  Category(id: 4, categoryName: 'Animation', icon: Icons.animation),
];
