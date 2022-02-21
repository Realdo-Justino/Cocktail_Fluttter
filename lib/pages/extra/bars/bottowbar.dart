import 'package:flutter/material.dart';

class BottowBar extends StatelessWidget {
  const BottowBar({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: const Color(0xff21003b),
        selectedItemColor: const Color(0xffa738ff),
        unselectedItemColor: const Color(0xff4c39ad),
        items:const [ 
          BottomNavigationBarItem(
            label: "Random Drinks",
            icon: Icon(Icons.local_drink),
          ),
          BottomNavigationBarItem(
            label: "SpaceShips",
            icon: Icon(Icons.attribution), 
          ),
          BottomNavigationBarItem(
            label: "Planets",
            icon: Icon(Icons.language),
          ),
        ],
      );
  }
}