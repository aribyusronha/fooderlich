import 'package:flutter/material.dart';
import 'package:fooderlich/models/models.dart';
import 'package:fooderlich/screens/empty_grocery_screen.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import 'grocery_item_screen.dart';

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
                final manager = Provider.of<GroceryManager>(
                context,
                listen: false);
                // 2
                Navigator.push(
                context,
                // 3
                MaterialPageRoute(
                    // 4
                    builder: (context) => GroceryItemScreen(
                    // 5
                    onCreate: (item) {
                        // 6
                        manager.addItem(item);
                        // 7
                        Navigator.pop(context);
                    },
                    ),),);
            },
            child: const Icon(Icons.add),
        ),
        body: buildGroceryScreen(),
    );
  }  
}