import 'package:flutter/material.dart';
import 'package:cocktail/pages/home/Api/model/allcocktails.dart';
import 'package:cocktail/pages/extra/bars/topbar.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/instructions/instructionstext.dart' as inst;
import 'package:cocktail/pages/extra/DetailsDrinks/ingredients/ingredients.dart' as ingr;

class DetailsDrink extends StatelessWidget {
  final Cocktails drink;
  const DetailsDrink({ Key key,this.drink }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> instructions=drink.strInstructions.toString().split('.');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff310058),
        title: const TopBar(),
      ),
      body: ListView(
         children: [
           Center(
             child: Padding(
               padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
               child: Text(drink.strDrink.toString(),
                 style: const TextStyle(
                   fontSize: 30,
                   fontFamily:'Lobster', 
                 ),
               )
             )
           ),
           Center(
             child: Image.network(
               drink.strDrinkThumb.toString()+'/preview',
               scale: 0.8,
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 20),
             child: ingr.ingredientsText(drink),
           ),
           Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: instructions.length,
              itemBuilder: (BuildContext context,int index){
                return inst.intructionsText(index, instructions[index]);
              }
            ),
           ),
         ],
      ),
    );
  }
}