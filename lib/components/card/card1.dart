import 'package:flutter/material.dart';
import 'package:fooderlich/models/explore_recipe.dart';
import '../../fooderlich_theme.dart';

class Card1 extends StatelessWidget{
    final ExploreRecipe recipe;

    const Card1({Key? key, required this.recipe}) : super(key: key);


     
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints.expand(width: 400, height: 500),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(recipe.backgroundImage.toString()),
                        fit: BoxFit.cover,
                        opacity: 0.75,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Stack(
                    children: [
                        Text(
                            recipe.subtitle.toString(),
                            style: FooderlichTheme.darkTextTheme.bodyText1,
                        ),
                        Positioned(
                            top: 20,
                            child: Text(
                                recipe.title.toString(),
                                style: FooderlichTheme.darkTextTheme.headline2,
                            ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 0,
                            child: Text(
                                recipe.message.toString(),
                                style: FooderlichTheme.darkTextTheme.bodyText1,
                            ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 0,
                            child: Text(
                                recipe.authorName.toString(),
                                style: FooderlichTheme.darkTextTheme.bodyText1,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}