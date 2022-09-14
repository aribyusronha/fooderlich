import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card1 extends StatelessWidget{
    const Card1({Key? key}) : super(key: key);

    final String category = 'Editor\'s Choice';
    final String title = 'The Art of Dough';
    final String description = 'Learn to make the perfect bread.';
    final String chef = 'Ray Wenderlich';
     
    @override
    Widget build(BuildContext context) {
        return Center(
            child: Container(
                padding: const EdgeInsets.all(16),
                constraints: const BoxConstraints.expand(width: 400, height: 500),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/mag1.png'),
                        fit: BoxFit.cover,
                        opacity: 0.75,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Stack(
                    children: [
                        Text(
                            category,
                            style: Theme.of(context).textTheme.headline2,
                        ),
                        Positioned(
                            top: 20,
                            child: Text(
                                title,
                                style: Theme.of(context).textTheme.headline1,
                            ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 0,
                            child: Text(
                                description,
                                style: Theme.of(context).textTheme.bodyText1,
                            ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 0,
                            child: Text(
                                chef,
                                style: Theme.of(context).textTheme.bodyText1,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}