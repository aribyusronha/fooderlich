import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';
import 'card/card1.dart';
import 'card/card2.dart';
import 'card/card3.dart';

class Home extends StatefulWidget{
    const Home({Key? key}) : super(key: key);

    @override
    _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
    int _selectedIndex = 0;

    static List<Widget> pages = <Widget>[
        const Card1(),
        const Card2(),
        const Card3()
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
                selectedItemColor: Colors.cyan,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.card_giftcard),
                        label: 'Card 1',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.card_giftcard),
                        label: 'Card 2',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.card_giftcard),
                        label: 'Card 3',
                    ),
                ],
            ),

        );
    }
}