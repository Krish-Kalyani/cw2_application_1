import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Pesto Pasta',
      'ingredients':
          'Pesto, Heavy Cream, Parmesan Cheese, Salt and Pepper, Red Chili Flakes, Pasta',
      'instructions':
          'Boil Pasta, Add store bought pesto, splash of heavy cream, and sprinkle parmesan cheese, salt and pepper, and red chili flakes.'
    },
    {
      'name': 'Tacos',
      'ingredients':
          'Tortillas, Black Beans, Mexican Cheese, Lettuce, Sour Cream, Avocado, Tomatoes',
      'instructions':
          'Warm tortillas and beans, assemble with all toppings (cheese, lettuce, sour cream, avocado, and tomatoes).'
    },
    {
      'name': 'Cookies',
      'ingredients': 'Flour, Eggs, Brown Sugar, Butter, Chocolate Chips',
      'instructions':
          'Whisk eggs, butter and sugar together, fold in flour and chocolate, and bake at 350°F for 12-15 minutes.'
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Krish Kalyani Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
