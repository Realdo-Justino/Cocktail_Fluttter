import 'package:cocktail/pages/home/Api/model/allcocktails.dart';

List<String> getMesuares(Cocktails cocktails){
  List<String> mesuare=[];

  if(cocktails.strMeasure1!=null)mesuare.add(cocktails.strMeasure1.toString());
  if(cocktails.strMeasure2!=null)mesuare.add(cocktails.strMeasure2.toString());
  if(cocktails.strMeasure3!=null)mesuare.add(cocktails.strMeasure3.toString());
  if(cocktails.strMeasure4!=null)mesuare.add(cocktails.strMeasure4.toString());
  if(cocktails.strMeasure5!=null)mesuare.add(cocktails.strMeasure5.toString());
  if(cocktails.strMeasure6!=null)mesuare.add(cocktails.strMeasure6.toString());
  if(cocktails.strMeasure7!=null)mesuare.add(cocktails.strMeasure7.toString());
  if(cocktails.strMeasure8!=null)mesuare.add(cocktails.strMeasure8.toString());
  if(cocktails.strMeasure9!=null)mesuare.add(cocktails.strMeasure9.toString());
  if(cocktails.strMeasure10!=null)mesuare.add(cocktails.strMeasure10.toString());
  if(cocktails.strMeasure11!=null)mesuare.add(cocktails.strMeasure11.toString());
  if(cocktails.strMeasure12!=null)mesuare.add(cocktails.strMeasure12.toString());
  if(cocktails.strMeasure13!=null)mesuare.add(cocktails.strMeasure13.toString());
  if(cocktails.strMeasure14!=null)mesuare.add(cocktails.strMeasure14.toString());
  if(cocktails.strMeasure15!=null)mesuare.add(cocktails.strMeasure15.toString());

  return mesuare;
}