import 'package:flutter/material.dart';

class FavModels {
    late bool isFavorite;

    FavModels({required this.isFavorite});

    bool favTap(){
        isFavorite = !isFavorite;
        return isFavorite;
    }
}

class FavProvider extends InheritedWidget{
    final FavModels favMod;
    final Widget child;

    const FavProvider({Key? key, required this.favMod, required this.child}) : super(key: key, child: child);

    static FavProvider? of(BuildContext context)=>
        context.dependOnInheritedWidgetOfExactType<FavProvider>();

    @override
    bool updateShouldNotify(covariant InheritedWidget oldWidget) {
        return true;
    }
}
