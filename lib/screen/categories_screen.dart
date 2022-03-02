import 'package:flutter/material.dart';
import 'package:food_appp/model/category.dart';
import 'package:food_appp/widget/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3/2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 70
          ),
          itemCount: categories.length,
          padding: const EdgeInsets.all(20),
          itemBuilder:(context, index) {
            return CategoryItem(
                categories[index].id,
                categories[index].title,
                categories[index].color
            );
          }),
    );
  }
}
