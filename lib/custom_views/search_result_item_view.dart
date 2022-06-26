import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchResultItemView extends StatefulWidget {
  const SearchResultItemView({Key? key}) : super(key: key);

  @override
  State<SearchResultItemView> createState() => _SearchResultItemViewState();
}

class _SearchResultItemViewState extends State<SearchResultItemView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Row(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200,
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
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Column(
                children: [
                  Text(
                    "Meena Bazar",
                    style: TextStyle(
                      color: Color(int.parse("0xff6A6A6A")),
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(
                            int.parse("0xffFFD203"),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(
                            int.parse("0xffFFD203"),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(
                            int.parse("0xffFFD203"),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(
                            int.parse("0xffFFD203"),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Color(
                            int.parse("0xffFFD203"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
                    child: Row(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.location_on_outlined,
                          size: 20,
                          color: Color(
                            int.parse("0xff4AADFF"),
                          ),
                        ),
                      ),
                      Text(
                        "California",
                        style: TextStyle(
                          color: Color(int.parse("0xffA6A6A6")),
                          fontSize: 14,
                        ),
                      ),
                    ]),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(12.0, 0.0, 0.0, 0.0),
                    child: Row(children: [
                      Text(
                        "\$350",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "/invoice",
                        style: TextStyle(
                          color: Color(int.parse("0xffA6A6A6")),
                          fontSize: 14,
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
