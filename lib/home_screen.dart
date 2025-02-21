import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      'name': 'Meatball & Spaghetti',
      'ingredients': 'Ground Beef, Spaghetti, Tomato Sauce, Garlic, Onion, Parmesan Cheese',
      'instructions': '1. Cook spaghetti.\n2. Mix ground beef with garlic and onion, then form meatballs.\n3. Fry or bake meatballs.\n4. Simmer meatballs in tomato sauce.\n5. Serve over spaghetti and top with Parmesan.',
    },
    {
      'name': 'Pizza',
      'ingredients': 'Pizza Dough, Tomato Sauce, Mozzarella Cheese, Pepperoni, Olive Oil, Basil',
      'instructions': '1. Preheat oven to 475°F (245°C).\n2. Roll out pizza dough.\n3. Spread tomato sauce evenly.\n4. Add cheese and toppings.\n5. Bake for 12-15 minutes.\n6. Garnish with fresh basil and olive oil.',
    },
    {
      'name': 'Fried Rice',
      'ingredients': 'Cooked Rice, Eggs, Carrots, Peas, Soy Sauce, Green Onion, Garlic',
      'instructions': '1. Heat oil in a pan.\n2. Scramble eggs and set aside.\n3. Sauté garlic, carrots, and peas.\n4. Add rice and soy sauce, stir well.\n5. Mix in scrambled eggs and green onions.',
    },
    {
      'name': 'Fried Chicken',
      'ingredients': 'Chicken Pieces, Flour, Eggs, Buttermilk, Spices (Salt, Pepper, Paprika), Oil',
      'instructions': '1. Marinate chicken in buttermilk and spices.\n2. Coat in flour mixture.\n3. Heat oil in a deep pan.\n4. Fry chicken until golden brown and crispy.\n5. Drain excess oil on paper towels.',
    },
    {
      'name': 'Steak',
      'ingredients': 'Beef Steak, Salt, Black Pepper, Butter, Garlic, Rosemary',
      'instructions': '1. Season steak with salt and pepper.\n2. Heat a pan to high heat.\n3. Sear steak on both sides.\n4. Add butter, garlic, and rosemary.\n5. Baste steak with butter and cook to preferred doneness.\n6. Let rest before serving.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(recipe['name']!),
              subtitle: Text(recipe['ingredients']!),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipe),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
