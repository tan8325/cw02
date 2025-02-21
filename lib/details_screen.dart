import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe['name']!)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ingredients:', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(recipe['ingredients']!, style: Theme.of(context).textTheme.bodyMedium),
            const Divider(height: 24),
            Text('Instructions:', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text(recipe['instructions']!, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
