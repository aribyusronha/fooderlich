import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import 'inherited_fav.dart';

void main() {
    runApp(FavProvider(favMod: FavModels(isFavorite: false), child: const MyApp()));
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        final theme = FooderlichTheme.dark();

        return MaterialApp(
            title: 'Fooderlich',
            theme: theme,
            home: const Home(),
        );
    }
}