import 'package:flutter/material.dart';
import 'package:shoppingonline/TrendingItems.dart';
import 'package:shoppingonline/HomePage.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor:Color(0xffe5a8b5),
            leading: GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back,color: Colors.black,),
            ),
          ),
          backgroundColor:Color(0xffe5a8b5),
          body: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIconColor: Colors.black,
                        prefixIcon: Icon(Icons.search),
                        labelStyle: TextStyle(fontSize: 18),
                        fillColor: Colors.black,
                        labelText: "Sarch groceroes and more",),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Treanding Items 🔥',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),


                  Trending(
                    'images/t.png',
                    "SUNFLOWR Jacket",
                    "idordgodrgdopgogkdrhkrh",
                    "idordgodrgdopgogkdrhkrh",


                  ),
                  Trending(
                    'images/t1.png',
                    "SUNFLOWR Jacket",
                    "idordgodrgdopgogkdrhkrh",
                    "idordgodrgdopgogkdrhkrh",


                  ),
                  Trending(
                    'images/t2.png',
                    "SUNFLOWR Jacket",
                    "idordgodrgdopgogkdrhkrh",
                    "idordgodrgdopgogkdrhkrh",


                  ),
                  Trending(
                    'images/t3.png',
                    "SUNFLOWR Jacket",
                    "idordgodrgdopgogkdrhkrh",
                    "idordgodrgdopgogkdrhkrh",


                  ),
                  Trending(
                    'images/t4.png',
                    "SUNFLOWR Jacket",
                    "idordgodrgdopgogkdrhkrh",
                    "idordgodrgdopgogkdrhkrh",


                  ),

                ],
              ),
            ],
          ),
        ));

  }

}
