import 'package:flutter/material.dart';
import 'package:cocktail/pages/extra/bars/seachbar.dart';
import 'package:cocktail/pages/extra/bars/navbar.dart';
import 'package:cocktail/pages/home/Api/listb.dart';
import 'package:cocktail/pages/extra/bars/bottowbar.dart';

class HomeOrganization extends StatefulWidget {
  const HomeOrganization({ Key key }) : super(key: key);

  @override
  _HomeOrganizationState createState() => _HomeOrganizationState();
}

class _HomeOrganizationState extends State<HomeOrganization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff310058),
        title: const SearchBar(),
      ),
      body:  const ListB(),
      drawer: const NavBar(),
      //bottomNavigationBar: const BottowBar(),
    );
  }
}