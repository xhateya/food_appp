import 'package:flutter/foundation.dart';

enum Complexity{

  Easy,
  Medium,
  Hard
}
enum Affordability{
  Affordable,
  Inexspensive,
  Exspensive

}
class Meal{
  final String id;
  final List<String> categories;
  final String title;
  final String imgurl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  Meal({
    required this.id,
    required this.title,
    required this.categories,
    required this.imgurl,
    required this.duration,
    required this.ingredients,
    required this.steps,
    required this.complexity,
    required this.affordability

 });


}
var meals= [
  Meal(
      id: 'm1',
      title: 'Frozen Banana Cereal Pops',
      categories: [
        'c3',
        'c1',
        'c4',
        'c6'
      ],
      imgurl: 'https://images.unsplash.com/photo-1576618148400-f54bed99fcfd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZGVzc2VydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
      duration: 5,
      ingredients: [
        '3/4 cup strawberry yogurt',
        '2 cups Fruity Pebbles cereal',
        '4 medium bananas, peeled and cut crosswise in half'
        '8 wooden pop sticks'

      ],
      steps: [
        'Place yogurt and cereal in separate shallow bowls. Insert pop sticks through cut side of bananas. Dip bananas in yogurt, then roll in cereal to coat. Transfer to waxed paper-lined baking sheets.',
        'Freeze until firm, about 1 hour. Transfer to airtight freezer containers; seal containers and return pops to freezer.'
      ],
      complexity: Complexity.Easy,
      affordability: Affordability.Affordable
  ),
  Meal(
      id: 'm2',
      title: 'Rainbow Gelatin Cubes',
      categories: [
        'c1',
        'c4'
      ],
      imgurl: 'https://media.istockphoto.com/photos/breakfast-bread-grilled-rainbow-cheese-toast-sandwich-picture-id932845032?k=20&m=932845032&s=612x612&w=0&h=B0zFltSOGekqFnXMGDWHAhAvHMBq4il5utB0WEUGyA4=',
      duration: 30,
      ingredients: [
        '4 packages (3 ounces each) assorted flavored gelatin, divided',
        '6 envelopes unflavored gelatin, divided',
        '5-3/4 cups boiling water, divided',
        '1 can (14 ounces) sweetened condensed milk',
        '1/4 cup cold water'

      ],
      steps: [
        'In a small bowl, combine 1 package flavored gelatin and 1 envelope unflavored gelatin. Stir in 1 cup boiling water until dissolved. Pour into a 13x9-in. dish coated with cooking spray; refrigerate until set but not firm, about 20 minutes.',
        'In small bowl, combine the condensed milk and 1 cup boiling water. In another bowl, sprinkle 2 envelopes unflavored gelatin over cold water; let stand for 1 minute. Stir in 3/4 cup boiling water. Add to milk mixture. Spoon 1 cup creamy gelatin mixture over the first flavored gelatin layer. Refrigerate until set but not firm, about 25 minutes.',
        'Repeat from beginning of recipe twice, alternating flavored gelatin with creamy gelatin layers. Chill each layer until set but not firm before spooning next layer on top. Make final flavored gelatin layer; spoon over top. Refrigerate at least 1 hour after completing last layer before cutting into 1-in. squares.'
      ],
      complexity: Complexity.Easy,
      affordability: Affordability.Affordable
  ),
  Meal(
      id: 'm3',
      title: 'Icebox Sandwiches',
      categories: [
        'c1',
        'c8'
      ],
      imgurl: 'https://images.unsplash.com/photo-1540713434306-58505cf1b6fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2FuZHdpY2h8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      duration: 20,
      ingredients: [
        '1 package (3.4 ounces) instant vanilla pudding mix',
        '2 cups cold 2% milk',
        '2 cups whipped topping',
        '1 cup miniature semisweet chocolate chips',
        '24 whole graham crackers, halved'

      ],
      steps: [
        'Mix pudding and milk according to package directions; refrigerate until set. Fold in whipped topping and chocolate chips.',
        'Place 24 graham cracker halves on a baking sheet; top each with about 3 tablespoons filling. Place another graham cracker half on top. Wrap individually in plastic; freeze until firm, about 1 hour. Serve sandwiches frozen.'
      ],
      complexity: Complexity.Medium,
      affordability: Affordability.Inexspensive
  ),
  Meal(
      id: 'm4',
      title: 'Pizza Muffins',
      categories: [
        'c3',
        'c5'
      ],
      imgurl: 'https://media.istockphoto.com/photos/fresh-pizza-muffin-picture-id177391823?b=1&k=20&m=177391823&s=170667a&w=0&h=RwY018kVkl0m4qagmXpa7nzw5mIVdIr3w78fUCpt7S0=',
      duration: 120,
      ingredients: [
        '2 teaspoons olive oil',
        '1 (16 ounce) package cold, prepared pizza dough',
        '4 ounces provolone cheese, diced',
        '¾ cup cooked, crumbled Italian sausage',
        '½ cup cooked, diced sweet peppers',
        '4 ounces mozzarella cheese, grated',
        '½ cup prepared pizza sauce',
        '¾ cup freshly grated Parmigiano-Reggiano cheese'

      ],
      steps: [
        'Preheat the oven to 400 degrees F (200 degrees C). Generously grease a 12-cup standard muffin pan with 2 teaspoons oil.',
        'Roll dough on a lightly floured surface to a thickness of 1/8 inch. Pick it up from the edges to make sure its not stuck to the surface, then cut out twelve 4-inch circles. Reroll the dough to cut all 12 circles if necessary.',
        'Place each circle into a prepared muffin cup, making sure its centered. Press and push dough up the sides of the cups, getting close to, but not all the way up to the top. When all circles have been placed in the muffin pan, go around one more time to push and press on each one.',
        'Put 1 tablespoon provolone cheese into each cup, followed by 1 tablespoon cooked sausage and 2 teaspoons cooked peppers. Lightly press on the fillings to compress, then top with 1 rounded tablespoon mozzarella cheese and 2 tablespoons pizza sauce, pushing the sauce down gently into the fillings; its okay that the fillings will be slightly higher than the pan. Sprinkle Parmigiano-Reggiano cheese generously over top.',
        'Bake in the upper center of the preheated oven until the tops are beautifully browned, 30 to 35 minutes.',
        'Remove from the oven and cool in the pan for 10 to 15 minutes. Go around the edge of each muffin with a knife, then use a fork or small spatula to remove from the pan.',
        'Let cool on a rack for a few minutes, then garnish with parsley and serve.'

      ],
      complexity: Complexity.Hard,
      affordability: Affordability.Exspensive
  ),
  Meal(
      id: 'm5',
      title: 'Poor Man`s Sandwich',
      categories: [
        'c8',
        'c3',
        'c7'
      ],
      imgurl: 'https://media.istockphoto.com/photos/classic-grilled-cuban-sandwich-picture-id1305692648?b=1&k=20&m=1305692648&s=170667a&w=0&h=hsJt2IBzHUYqFGm79L07zDE8imQn8vzcfgHfaNRxvPI=',
      duration: 5,
      ingredients: [
        '1½ tablespoons creamy peanut butter',
        '2 slices whole wheat bread',
        '6 slices dill pickle',
        '1 tablespoon thinly sliced onion',
        '2 teaspoons mayonnaise'

      ],
      steps: [
        'Spread peanut butter onto one slice of the bread. ',
        'Place pickle slices and onion slices onto the peanut butter.',
        'Spread mayonnaise onto the other slice of bread, and place on top of the other piece of bread.'

      ],
      complexity: Complexity.Easy,
      affordability: Affordability.Affordable
  ),
  Meal(
      id: 'm6',
      title: 'Traditional Blackberry Cobbler',
      categories: [
        'c3',
        'c6'
      ],
      imgurl: 'https://media.istockphoto.com/photos/yogurt-with-granola-berry-fruits-and-chocolate-picture-id959868924?b=1&k=20&m=959868924&s=170667a&w=0&h=yESgsGFd7uU_OyXWTLeoADmw7py5Jy17x7F0NiELMSs=',
      duration: 35,
      ingredients: [
        '2 pounds frozen blackberries, thawed',
        '1¼ cups white sugar',
        '1½ tablespoons all-purpose flour',
        '1½ tablespoons butter',
        '1½ cups all-purpose flour',
        '1½ teaspoons baking powder',
        '¼ teaspoon salt',
        '2 tablespoons white sugar',
        '¼ cup softened butter',
        '⅔ cup milk',
        '1 large egg, beaten'

      ],
      steps: [
        'Preheat an oven to 400 degrees F (200 degrees C).',
        'Toss the blackberries with 1 1/4 cups sugar and 1 1/2 tablespoons flour in a mixing bowl. Spread into a 9x9-inch baking dish, and dot with 1 1/2 tablespoons of butter. In a separate bowl, whisk 1 1/2 cups flour together with baking powder, salt, and 2 tablespoons sugar. Cut in the softened butter until the mixture resembles cornmeal. Stir in the milk and egg until combined. Drop the batter over the berries by the spoonful.',
        'Bake in the preheated oven until the fruit is tender and the topping is golden brown, 20 to 30 minutes.'


      ],
      complexity: Complexity.Medium,
      affordability: Affordability.Inexspensive
  ),
  Meal(
      id: 'm7',
      title: 'Moscow Mule Cocktail',
      categories: [
        'c2',
        'c8',
        'c7'
      ],
      imgurl: 'https://images.unsplash.com/photo-1556881286-fc6915169721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJldmVyYWdlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
      duration: 5,
      ingredients: [
        '1½ fluid ounces vodka',
        '½ fluid ounce lime juice',
        'ice cubes',
        '½ cup ginger beer',
        '1 lime wedge for garnish'

      ],
      steps: [
       'Pour vodka and lime juice into a mug; add ice cubes and ginger beer. Stir to combine.',
        'Drop a lime wedge into the mug for garnish.'
      ],
      complexity: Complexity.Easy,
      affordability: Affordability.Exspensive
  ),
  Meal(
      id: 'm8',
      title: 'Creamy Garlic Shrimp Toast',
      categories: [
        'c5',
        'c6'
      ],
      imgurl: 'https://media.istockphoto.com/photos/bruschetta-with-salmon-curd-cheese-and-cucumber-on-toast-in-high-key-picture-id1222564135?b=1&k=20&m=1222564135&s=170667a&w=0&h=ucag_JXJ6Sn-zB9o2kGZLJAmLbzOC9XgtWWGbvYfoGI=',
      duration: 30,
      ingredients: [
        '12 ounces large shrimp, peeled and deveined,'
        '1 pinch cayenne pepper',
        '¼ teaspoon smoked paprika',
        '3 cloves garlic, crushed, or more to taste',
        '2 thick slices French bread',
        '6 tablespoons clarified butter, melted, divided',
        ' 2 teaspoons fresh lemon zest',
        '2 tablespoons fresh lemon juice',
        '½ cup heavy cream',
        '2 tablespoons minced fresh Italian parsley',
        '1 pinch salt, or to taste'


      ],
      steps: [
       'Butterfly shrimp and place in a mixing bowl. Add cayenne, paprika, and garlic and stir until shrimp are evenly coated. Refrigerate until needed.',
        'Trim most of the crusts off of the bread.',
        'Add 4 tablespoons melted butter to a skillet over medium heat. Add both slices of bread and toast until golden brown, 3 to 4 minutes per side. Remove bread to a plate and wipe out any crumbs.',
        'Add remaining melted butter to the skillet and increase heat to high. When the pan is very hot and you see the first wisp of smoke, add shrimp and use tongs to spread into an even layer. Sear, without stirring or tossing, for 1 minute.',
        'Sprinkle with lemon zest and add lemon juice and cream. Stir with a spoon to scrape any browned bits off the bottom. Let cream boil and reduce for 1 ½ to 2 minutes as the shrimp finishes cooking and the sauce thickens up.',
        'Turn off the heat and stir in parsley. Taste and add salt if needed.',
        'Divide shrimp and sauce evenly over each piece of toasted bread.'

      ],
      complexity: Complexity.Hard,
      affordability: Affordability.Exspensive
  ),
  Meal(
      id: 'm9',
      title: 'Creamy Pineapple Drink',
      categories: [
        'c2',
        'c6',
        'c8'
      ],
      imgurl: 'https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJldmVyYWdlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
      duration: 5,
      ingredients: [
        '½ cup fat free milk',
        '8 fresh pineapple chunks',
        '⅓ cup ice cubes,'
        '1 packet Classic French Vanilla Flavor CARNATION BREAKFAST ESSENTIALS® LIGHT START™ Complete Nutritional Drink,'
        '½ banana',
        '1 tablespoon pineapple juice'


      ],
      steps: [
        'Place milk, pineapple, ice, Carnation Breakfast Essentials Drink, banana and pineapple juice in blender; cover. Blend until smooth.'

      ],
      complexity: Complexity.Hard,
      affordability: Affordability.Exspensive
  ),
  Meal(
      id: 'm10',
      title: ' Cherry Berry Cheesecake ',
      categories: [
        'c6',
        'c1',
        'c3'
      ],
      imgurl: 'https://images.unsplash.com/photo-1593424718424-cf4d83f3def1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGRlc3NlcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
      duration: 360,
      ingredients: [
        '1¼ cups graham cracker crumbs',
        '6 tablespoons vegan buttery sticks, melted',
        '2 tablespoons powdered sugar',
        '2 (8 ounce) containers nondairy soy cream cheese substitute',
        '½ cup powdered sugar',
        '¾ cup Almond Breeze Vanilla almondmilk, divided',
        '2 pkg. (4 serving size) white chocolate instant pudding mix',
        '1 (21 ounce) can cherry pie filling',
        '1 cup sliced fresh strawberries'


      ],
      steps: [
        'In medium bowl, mix cracker crumbs, melted buttery sticks, and 2 tablespoons powdered sugar. Press in bottom and 1/2 inch up sides of 9-inch springform pan. Set aside.',
        'In large bowl, beat cream cheese substitute and 1/2 cup powdered sugar with electric mixer on low speed. Beat on medium speed until smooth and creamy, slowly adding 1/4 cup of the almondmilk. Stop mixer. Add pudding mix. Beat on low speed until mixed. Beat on medium speed until smooth. Slowly add remaining almondmilk; beat until smooth and creamy.',
        'Spread filling over crust. Cover loosely and refrigerate at least 6 hours.',
        'When ready to serve, mix cherry pie filling and strawberries in medium bowl. Cut cheesecake into wedges. Top with fruit topping. Store in refrigerator.'


      ],
      complexity: Complexity.Medium,
      affordability: Affordability.Inexspensive
  ),


];

