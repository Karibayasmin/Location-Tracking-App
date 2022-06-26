import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location_tracking_app/custom_views/search_location_item_view.dart';
import 'package:location_tracking_app/custom_views/search_result_item_view.dart';
import 'package:flutter/services.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  static const platform = const MethodChannel("com.example.location_tracking_app");
  TextEditingController locationSearchController = TextEditingController();
  String? value = "";

  @override
  void initState() {
    super.initState();

    setState(() {
      printFromKotlin();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(int.parse("0xffF5F5F5")),
          title: Text("Visted Location", style: TextStyle(color: Colors.green, fontSize: 16),),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {},
          ),
          actions: [
            IconButton(
              color: Colors.green,
              icon: Icon(Icons.notifications_none_sharp),
              onPressed: () {},
            )
          ],
          elevation: 1,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintStyle: TextStyle(fontSize: 12, color: Colors.black26),
                    hintText: 'Search locations',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  ),
                  controller: locationSearchController,
                  onChanged: onSearchTextChanged,
                ),
                margin: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0),
              ),

              const SizedBox(
                height: 10,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text("Searched Locations", style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold),),
                  margin: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0),
                ),
              ),

              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: _searchedLocationList(context),
                margin: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0),
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text("Search Result", style: TextStyle(color: Color(int.parse("0xffFF8C68")), fontSize: 14, fontWeight: FontWeight.bold),),
                  margin: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: _searchResultList(context),
                margin: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 10.0),
              ),

              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
    );
  }

  void onSearchTextChanged(String text) async {
    print("enter here $text");

  }

  _searchedLocationList(BuildContext context) {
    return ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return SearchedLocationItemView();
          });
  }

  _searchResultList(BuildContext context) {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return SearchResultItemView();
        });
  }

  void printFromKotlin() async {

    try{
      value = await platform.invokeMethod("from_kotlin");
    }catch(e){
      print(e);
    }
    print(value);
  }
}
