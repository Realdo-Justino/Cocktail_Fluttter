import 'package:cocktail/pages/home/Api/model/allcocktails.dart';
List<String> getIngredients(Cocktails cocktails){
  List<String> ingredients=[];

  if(cocktails.strIngredient1!=null) ingredients.add(cocktails.strIngredient1.toString());
  if(cocktails.strIngredient2!=null) ingredients.add(cocktails.strIngredient2.toString());
  if(cocktails.strIngredient3!=null) ingredients.add(cocktails.strIngredient3.toString());
  if(cocktails.strIngredient4!=null) ingredients.add(cocktails.strIngredient4.toString());
  if(cocktails.strIngredient5!=null) ingredients.add(cocktails.strIngredient5.toString());
  if(cocktails.strIngredient6!=null) ingredients.add(cocktails.strIngredient6.toString());
  if(cocktails.strIngredient7!=null) ingredients.add(cocktails.strIngredient7.toString());
  if(cocktails.strIngredient8!=null) ingredients.add(cocktails.strIngredient8.toString());
  if(cocktails.strIngredient9!=null) ingredients.add(cocktails.strIngredient9.toString());
  if(cocktails.strIngredient10!=null) ingredients.add(cocktails.strIngredient10.toString());
  if(cocktails.strIngredient11!=null) ingredients.add(cocktails.strIngredient11.toString());
  if(cocktails.strIngredient12!=null) ingredients.add(cocktails.strIngredient12.toString());
  if(cocktails.strIngredient13!=null) ingredients.add(cocktails.strIngredient13.toString());
  if(cocktails.strIngredient14!=null) ingredients.add(cocktails.strIngredient14.toString());
  if(cocktails.strIngredient15!=null) ingredients.add(cocktails.strIngredient15.toString()); 

  return ingredients;
}