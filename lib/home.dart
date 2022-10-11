import 'package:flutter/material.dart';
import 'package:fooderlich/screens/grocery_screen.dart';
import 'package:fooderlich/screens/recipes_screen.dart';
import 'package:provider/provider.dart';
import 'fooderlich_theme.dart';
import 'package:fooderlich/models/explore_recipe.dart';
import 'components/components.dart';
import 'models/models.dart';
import 'screens/explore_screen.dart';
import 'screens/grocery_screen.dart';

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
        const GroceryScreen(),

    ];

    void _onItemTapped(int index){
        setState(() {
            _selectedIndex = index;
        });
    }

    @override
    Widget build(BuildContext context) {
        return Consumer<TabManager>(builder: (context,tabManager ,child){
            return Scaffold(
            appBar: AppBar(
                title: Text(
                    'Fooderlich',
                    style: Theme.of(context).textTheme.headline1,
                ),
            ),
            body: pages[tabManager.selectedTab],
            bottomNavigationBar: BottomNavigationBar(
                unselectedItemColor: Colors.blueGrey,
                selectedItemColor: Colors.cyan,
                currentIndex: tabManager.selectedTab,
                onTap: (index){
                    tabManager.goToTab(index);
                },
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
            ),);
        });
    }
}