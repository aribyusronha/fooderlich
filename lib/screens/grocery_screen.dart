import 'dart:js';

import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';

class GroceryScreen extends StatelessWidget{
  const GroceryScreen({super.key});

    Widget buildGroceryScreen(){
        return Consumer<GroceryManager>(
            builder: (context, manager, child) {
                if (manager.groceryItems.isNotEmpty){
                return Container();
                }
                else {
                return const EmptyGroceryScreen();
                }
            }
        );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
                
            },
            child: const Icon(Icons.add),
        ),
        body: buildGroceryScreen(),
    );
  }  
}