import 'package:flutter/material.dart';
import 'package:cocktail/pages/extra/searchpage/searchpage.dart';

void showsearch(BuildContext context,String texto,String url){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>SearchPage(searchText: texto,url: url,))
  );
}