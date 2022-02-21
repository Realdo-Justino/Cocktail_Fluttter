import 'package:cocktail/pages/extra/DetailsDrinks/ingredients/getmesuares.dart';
import 'package:flutter/material.dart';
import 'package:cocktail/pages/home/Api/model/allcocktails.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/ingredients/textingredients.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/ingredients/getingredient.dart';

Widget ingredientsText(Cocktails cocktails){
  List<String> itemList = getIngredients(cocktails);
  List<String> itemMesuare = getMesuares(cocktails);
 
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 20, 10, 20),
    child: ListView.builder(
      itemCount: itemList.length,
      shrinkWrap: true,
      itemBuilder:(BuildContext context,int index){
        return textIngredients(index,itemList[index],itemMesuare);
      } ,
    )
  );
}
