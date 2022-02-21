import 'package:flutter/material.dart';
Widget textIngredients(int index,String item, List<String> mesuare){
  try{
    if(index==0){
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const SizedBox(
            width: 100,
            child: Text('Ingredients: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
          ),
          Text(mesuare[index]),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(item),
          ),
        ],
      );
    }
    else{
      return Row(
        children:[
          const SizedBox(width: 100,),
          Text(mesuare[index]),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(item),
          ),
        ],
      );
    }
  }catch(e){
    if(index==0){
      return Row(
        children:[
          const SizedBox(
            width: 100,
            child: Text('Ingredients: ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(item),
          ),
        ],
      );
    }
    else{
      return Row(
        children:[
          const SizedBox(width: 180,),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(item),
          ),
        ],
      );
    }
  }
}