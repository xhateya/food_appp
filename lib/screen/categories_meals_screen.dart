import 'package:flutter/material.dart';
import 'package:food_appp/model/meal.dart';
import 'package:food_appp/widget/meal_item.dart';

class CategoriesMealScreen extends StatelessWidget {
  // var nama routes

  static const routeName = '/categories-meals';

  @override
  Widget build(BuildContext context) {
    // menyambungkan argument yang dikirim
    final routeArgs = ModalRoute
        .of(context)!
        .settings
        .arguments as Map<String, String>;
    final categoryId = routeArgs["id"];
    final categoryTitle = routeArgs["title"];
    //membuat var untuk memfilter data sesuai yang dkita klik dan menampilkan dalam bentuk list

    final categoriesMeals = meals.where((mealItem) =>
        mealItem.categories.contains(categoryId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
                id: categoriesMeals[index].id,
                title: categoriesMeals[index].title,
                imgUrl: categoriesMeals[index].imgurl,
                duration: categoriesMeals[index].duration,
                complexity: categoriesMeals[index].complexity,
                affordability: categoriesMeals[index].affordability

            );
          },
        itemCount: categoriesMeals.length,
      ),
    );
  }
}
