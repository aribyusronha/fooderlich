import 'package:flutter/material.dart';
import 'package:fooderlich/models/explore_recipe.dart';
import 'author_card.dart';
import '../../fooderlich_theme.dart';

class Card2 extends StatelessWidget  {
    final ExploreRecipe recipe;

    const Card2({Key? key, required this.recipe}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Center(
          child: Container(
              constraints: const BoxConstraints.expand(width: 350,height: 450),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(recipe.backgroundImage.toString()),
                      fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                  children: [
                        AuthorCard(
                          authorName: recipe.authorName.toString(),
                          title: recipe.role.toString(),
                          imageProvider: AssetImage(recipe.profileImage.toString()),
                          ),
                      Expanded(
                          child: Stack(
                              children: [
                                  Positioned(
                                      bottom: 16,
                                      right: 15,
                                      child: Text(
                                          recipe.title.toString(),
                                          style: FooderlichTheme.lightTextTheme.headline1,
                                      ),
                                  ),

                                  Positioned(
                                      bottom: 70,
                                      left: 16,
                                      child: RotatedBox(
                                          quarterTurns: 3,
                                          child: Text(
                                              recipe.subtitle.toString(),
                                              style: FooderlichTheme.lightTextTheme.headline1,
                                        ),
                                      ),
                                  )
                              ],
                          )
                      )
                  ],
              ),
          ),
        );
    }   
}