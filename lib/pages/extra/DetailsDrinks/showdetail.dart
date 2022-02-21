import 'package:flutter/material.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/detailsdrink.dart';

void showdetails(AsyncSnapshot snapshot,int index,BuildContext context){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>DetailsDrink(drink: snapshot.data[index]))
  );
}