import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: Text(
        'Cocktails App',
        style: TextStyle(
          fontFamily:'Lobster', 
          color: Colors.white70
        ),   
      ),
    );
  }
}
            