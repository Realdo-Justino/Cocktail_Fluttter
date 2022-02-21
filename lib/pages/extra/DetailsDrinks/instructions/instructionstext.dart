import 'package:flutter/material.dart';
Widget intructionsText(int index,String instructions){
    if(index==0){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            ' Instructions: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
          Flexible(
            child: Text(instructions+'.',
            softWrap: true,),
          ),
        ],
      );
    }else{
      return Text(instructions+'.');
    }
  }