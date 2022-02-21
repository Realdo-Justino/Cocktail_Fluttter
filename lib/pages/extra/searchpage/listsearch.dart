import 'package:flutter/material.dart';
import 'package:cocktail/pages/extra/searchpage/apisearch.dart';
import 'package:cocktail/pages/extra/DetailsDrinks/showdetail.dart';
import 'package:cocktail/pages/extra/loading.dart';

class ListSearch extends StatefulWidget {
  final String input;
  final String url;
  const ListSearch({ Key key, this.input,this.url }) : super(key: key);

  @override
  _ListSearchState createState() => _ListSearchState();
}

class _ListSearchState extends State<ListSearch> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: apiSearch(widget.input,widget.url),
      builder: (BuildContext context,AsyncSnapshot snapshot) {
        if(snapshot.hasData){
          return ListView.separated(
            itemCount: snapshot.data.length,
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
          ); 
        }
        else{
          return const Loading();
        }
      },
    );
  }
}