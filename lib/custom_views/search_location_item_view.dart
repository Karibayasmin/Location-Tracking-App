import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchedLocationItemView extends StatefulWidget {
  const SearchedLocationItemView({Key? key}) : super(key: key);

  @override
  State<SearchedLocationItemView> createState() =>
      _SearchedLocationItemViewState();
}

class _SearchedLocationItemViewState extends State<SearchedLocationItemView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 100,
            child: Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image(image: AssetImage("lib/assets/images/item_demo_image.jpeg"), fit: BoxFit.fill,),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text("Searched Locations", style: TextStyle(color: Colors.black, fontSize: 12,),),
              margin: EdgeInsets.all(2),
            ),
          ),
        ],
      ),
    );
  }
}
