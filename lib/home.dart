import 'package:flutter/material.dart';
import 'package:fooderlich/screens/recipes_screen.dart';
import 'fooderlich_theme.dart';
import 'package:fooderlich/models/explore_recipe.dart';
import 'components/components.dart';
import 'models/models.dart';
import 'screens/explore_screen.dart';

class Home extends StatefulWidget{
    const Home({Key? key}) : super(key: key);

    @override
    _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
    int _selectedIndex = 0;
    

    static List<Widget> pages = <Widget>[
        ExploreScreen(),
        RecipeScreen(),

        Card3(recipe: ExploreRecipe(
            title: 'Vegan Trends',
            tags: [
                'Healthy',
                'Vegan',
                'Carrots',
                'Greens',
                'Wheat',
                'Pescetarian',
                'Mint',
                'Lemongrass',
                'Salad',
                'Water',
            ],
            backgroundImage: 'assets/magazine_pics/mag3.png'
        )),

    ];

    void _onItemTapped(int index){
        setState(() {
            _selectedIndex = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(
                    'Fooderlich',
                    style: Theme.of(context).textTheme.headline1,
                ),
            ),
            body: pages[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
                unselectedItemColor: Colors.blueGrey,
                selectedItemColor: Colors.cyan,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.explore),
                        label: 'Explore',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.book),
                        label: 'Recipes',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.list),
                        label: 'To Buy',
                    ),
                ],
            ),

        );
    }
}