import 'package:flutter/material.dart';

class Category {
  Category({
    required this.id,
    required this.title,
    this.color = const Color.fromARGB(255, 82, 4, 4),
  });

  final String id;
  final String title;
  final Color color;
}
