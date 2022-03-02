import 'package:flutter/material.dart';
import 'package:food_appp/model/meal.dart';

class DetailMealScreen extends StatelessWidget {
  //var inisialisasi routes
  static const routesName = '/meal-detail';

 final Function toggleFavorite;
 final Function isFavorite;

  DetailMealScreen(this.toggleFavorite, this.isFavorite);



  @override
  Widget build(BuildContext context) {
    //buat var untuk menampung argument
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    //buat var untuk menentukan id yang dipilih
    final selectedMeal= meals.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedMeal.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedMeal.imgurl, fit: BoxFit.cover,),
            ),
            buildSectionTitle(context, "Ingredients"),
            buildContainer(context,
              ListView.builder(
                  itemBuilder: (context,index) {
                return Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,horizontal: 10
                      )
                  ),
                );
              })

            ),
            buildSectionTitle(context, "Steps"),
            buildContainer(context,
              ListView.builder(
                  itemBuilder: (context,index){
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text('#${(index + 1 )}'),
                          ),
                          title: Text(selectedMeal.steps[index]),
                        )
                      ],
                    );
                  },
                itemCount: selectedMeal.steps.length,
              )

            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  () => toggleFavorite(mealId),
        child: Icon(
            isFavorite(mealId)?Icons.favorite : Icons.favorite_border, color: Colors.brown,
        ),
        // onPressed: () => toggleFavorite(mealId),
      ),
    );
  }
  Widget buildSectionTitle(BuildContext context, String text){
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(text, style: Theme.of(context).textTheme.headline6,),
    );
  }

  Widget buildContainer(BuildContext context, Widget child){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.grey)
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: child,

    );
  }
}
