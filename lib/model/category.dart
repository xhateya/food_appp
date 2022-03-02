import 'package:flutter/material.dart';

class Category {
  final String title;
  final String id;
  final Color color;

  Category({
    required this.title,
    required this.id,
    this.color = Colors.brown
  });
}

var categories = [
  Category(
      id: 'c1',
      title: 'Desserts',
      color: Colors.white54
  ),
  Category(
      id: 'c2',
      title: 'Beverages',
      color: Colors.white54
  ),
  Category(
      id: 'c3',
      title: 'Snacks',
      color: Colors.white54
  ),
  Category(
      id: 'c4',
      title: 'Sweets',
      color: Colors.white54
  ),
  Category(
      id: 'c5',
      title: 'Spicy',
      color: Colors.white54
  ),
  Category(
      id: 'c6',
      title: 'Healthy',
      color: Colors.white54
  ),
  Category(
      id: 'c7',
      title: 'Traditional',
      color: Colors.white54
  ),
  Category(
      id: 'c8',
      title: 'Unique',
      color: Colors.white54
  )
];