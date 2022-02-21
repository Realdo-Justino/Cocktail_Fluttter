import 'package:cocktail/pages/home/Api/model/allcocktails.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<Cocktails>>getDrink()async{
  List<Cocktails> cocktails=[];
  var url=Uri.parse('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=');
  var dados=await http.get(url);
  var texto= dados.body.substring(10,(dados.body.length-1));
  var jsonString=jsonDecode(texto);


   for(var i in jsonString){
     Cocktails item=Cocktails(i['idDrink'], 
     i['strDrink'],
     i['strDrinkAlternate'],
     i['strTags'],
     i['strVideo'],
     i['strCategory'],
     i['strIba'],
     i['strAlcoholic'],
     i['strGlass'],
     i['strInstructions'],
     i['strInstructionsEs'],
     i['strInstructionsDe'],
     i['strInstructionsFr'],
     i['strInstructionsIt'],
     i['strInstructionsZhHans'],
     i['strInstructionsZhHant'],
     i['strDrinkThumb'],
     i['strIngredient1'],
     i['strIngredient2'],
     i['strIngredient3'],
     i['strIngredient4'],
     i['strIngredient5'],
     i['strIngredient6'],
     i['strIngredient7'],
     i['strIngredient8'],
     i['strIngredient9'],
     i['strIngredient10'],
     i['strIngredient11'],
     i['strIngredient12'],
     i['strIngredient13'],
     i['strIngredient14'],
     i['strIngredient15'],
     i['strMeasure1'],
     i['strMeasure2'],
     i['strMeasure3'],
     i['strMeasure4'],
     i['strMeasure5'],
     i['strMeasure6'],
     i['strMeasure7'],
     i['strMeasure8'],
     i['strMeasure9'],
     i['strMeasure10'],
     i['strMeasure11'],
     i['strMeasure12'],
     i['strMeasure13'],
     i['strMeasure14'],
     i['strMeasure15'],
     i['strImageSource'],
     i['strImageAttribution'],
     i['strCreativeCommonsConfirmed'],
     i['dateModifie']);
   cocktails.add(item);
   }

  return cocktails;
}