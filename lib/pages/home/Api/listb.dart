import 'package:cocktail/pages/extra/loading.dart';
import 'package:flutter/material.dart';
import 'package:cocktail/pages/home/Api/ApiResults/apiget.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/showdetail.dart';
import 'package:cocktail/pages/extra/bars/categoryfilter.dart';

class ListB extends StatefulWidget {
  const ListB({ Key key }) : super(key: key);

  @override
  _ListBState createState() => _ListBState();
}
class _ListBState extends State<ListB> {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getDrink(),
      builder: (BuildContext context,AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          return ListView(
            children: [
              categoryPicker(context),
              ListView.separated(
              itemCount: snapshot.data.length,
              shrinkWrap: true,
              separatorBuilder: (BuildContext context, int index){
                return const Divider(
                  height: 1,
                );
              }, 
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  leading: Image.network(
                    snapshot.data[index].strDrinkThumb+'/preview',
                  ),
                  title: Text(snapshot.data[index].strDrink),
                  subtitle: Text(snapshot.data[index].strCategory),
                  onTap: (){
                    showdetails(snapshot, index,context);
                  },
                );
              }
            ),
            ]
          ); 
        }
        else{
          return const Loading();
        }
      },
    );
  }
}