import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'empty_grocery_screen.dart';

class GroceryScreen extends StatelessWidget{
    const GroceryScreen ({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return const EmptyGroceryScreen();
    }


}