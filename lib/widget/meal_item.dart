import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_appp/model/meal.dart';
import 'package:food_appp/screen/detail_meals_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    required this.id,
    required this.title,
    required this.imgUrl,
    required this.duration,
    required this.complexity,
    required this.affordability

  });

  //membuat function untuk complexity

  String get complexityText{
    switch (complexity){
      case Complexity.Easy:
        return'Easy';
      case Complexity.Medium:
        return'Medium';
      case Complexity.Hard:
        return'Hard';
      default:
        return 'Unknown';

    }
  }

  // membuat function untuk affordability

  String get affordabilityText{
    switch(affordability){
      case Affordability.Affordable :
        return 'Affordable';
      case Affordability.Inexspensive:
        return 'Inexspensive';
      case Affordability.Exspensive:
        return'Exspensive';
      default:
        return'Unknown';

    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, DetailMealScreen.routesName,arguments: id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child:  Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)
                  ),
                  child: Image.network(imgUrl,
                  height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                ),
                Positioned(
                  bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20
                      ),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                    )
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(width: 6,),
                    Text('$duration min')
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(width: 6,),
                    Text(complexityText)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money),
                    SizedBox(width: 6,),
                    Text(affordabilityText)
                  ],
                )

              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
