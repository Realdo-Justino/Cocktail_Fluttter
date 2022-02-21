import 'package:flutter/material.dart';
import 'package:cocktail/pages/extra/bars/topbar.dart';
import 'package:cocktail/pages/extra/searchpage/listsearch.dart';
class SearchPage extends StatefulWidget {
  final String searchText;
  final String url;
  const SearchPage({ Key key, this.searchText,this.url }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final String searchText=widget.searchText;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff310058),
        title: const TopBar(),
      ),
      body: ListSearch(input: searchText,url: widget.url,)
    );
  }
}