import 'package:flutter/material.dart';
import 'package:fooderlich/components/recipe_grid_view.dart';
import '../api/mock_fooderlich_service.dart';
import '../components/components.dart';

class RecipeScreen extends StatelessWidget{
    final exploreService = MockFooderlichService();

    RecipeScreen({Key? key}) : super(key: key);
        
    @override
    Widget build(BuildContext context) {
        return FutureBuilder(
            future: exploreService.getRecipes(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                    return RecipesGridView(recipes: snapshot.data!);
                } 
                else {
                    return const Center(child: CircularProgressIndicator());
                }
            }
        );
    }
}