import 'package:flutter/material.dart';
import 'package:shoppingonline/HomePage.dart';
import 'package:shoppingonline/NavBar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:shoppingonline/infornationpage.dart';

class shoopingcard extends StatefulWidget {
  const shoopingcard({Key? key}) : super(key: key);

  @override
  State<shoopingcard> createState() => _shoopingcardState();
}

class _shoopingcardState extends State<shoopingcard> {
  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffe5a8b5),
        leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NavBar()));
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      backgroundColor: Color(0xffe5a8b5),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Slidable(
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                              },
                              backgroundColor: Colors.red,
                              icon: Icons.delete,
                            )
                          ],
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffe8e9eb),
                                  spreadRadius: 1,
                                  blurRadius: 1.0,
                                ),
                              ]),
                          height: 150,
                          width: 425,
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Container(
                                    height: 160,
                                    width: 107,
                                    color: Colors.white,
                                    child: Image(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/t.png'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10.0, top: 20),
                                      child: Text(
                                        'SunFlower Jacket',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),

                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Price : 20,000 IQD',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),

                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'XS,S,M,L,XL,XXL',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ]),
                        )),
                  ),
                ])
              ],
            ),
          ),
          Positioned(
              left: 10.0,
              top: 550.0,
              right: 10,
              child: GestureDetector(
                onTap: () {

                  showDialog(context: context, builder: (contex){
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title:Text('Do you want to buy ?'),
                      content: GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>informationPage()));},
                          child: Text('Go to Payment Page',style: TextStyle(color: Colors.lightBlue),)),

                    ) ;
                  });


                },
                child: new Container(
                  alignment: Alignment.centerLeft,
                  width: 350,
                  height: 50.0,
                  decoration: new BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('   BUY ',
                          style: TextStyle(color: Colors.white,
                              fontSize: 18
                          ),),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('IQD 20,000',
                          style: TextStyle(color: Colors.white,
                              fontSize: 18
                          ),),
                      )
                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }


}
