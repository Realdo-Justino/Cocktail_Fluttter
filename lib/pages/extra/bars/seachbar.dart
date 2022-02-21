import 'package:flutter/material.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/showsearch.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({ Key key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String url='https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';
    return Row(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Text(
                'Cocktails App',
                style: TextStyle(
                  fontFamily:'Lobster', 
                  color: Colors.white70
                ),   
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 260),
                child: TextField(
                  onSubmitted: (String value){
                    showsearch(context, value,url);
                  },
                  enabled: true,
                  cursorColor: Colors.grey,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Enter a search term',
                    isDense: true,                      // Added this
                    contentPadding: const EdgeInsets.all(8),
                    border: const OutlineInputBorder(),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff4e008c), 
                        width: 2.0
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff8f03ff), 
                        width: 2.0
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Colors.grey[400],
                      size: 15,
                    )
                  ),
                ),
              ),
            ),
          ]
        );
  }
}