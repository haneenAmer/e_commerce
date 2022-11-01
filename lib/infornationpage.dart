

import 'package:flutter/material.dart';
import 'package:shoppingonline/ShoopingCard.dart';
import 'package:shoppingonline/paymenpage.dart';

class informationPage extends StatefulWidget {
  const informationPage({Key? key}) : super(key: key);

  @override
  State<informationPage> createState() => _informationPageState();
}

class _informationPageState extends State<informationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffe5a8b5),
        leading: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (contex) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text('Undo the purchase'),
                    content: Padding(
                      padding: const EdgeInsets.only(left: 0.0),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => shoopingcard()));
                              },
                              child: Text(
                                'Yes',
                                style: TextStyle(color: Colors.blue),
                              )),
                          SizedBox(
                            width: 80,
                          ),
                          Container(
                            height: 20,
                            width: 3,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => informationPage()));
                              },
                              child: Text(
                                'No',
                                style: TextStyle(color: Colors.blue),
                              ),

                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      backgroundColor: Color(0xffe5a8b5),
      body: Stack(
        children:[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Enter your information',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Full this information to arrived the order correctly 🤩',
                style: TextStyle(fontSize: 18, color: Colors.black38),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Enter your area :',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your text",
                      fillColor: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'near popular place',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your text",
                      fillColor: Colors.white70),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Enter your phone number:',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your text",
                      fillColor: Colors.white70),
                ),
              ),
            ),


          ],
        ),
          Positioned(
              left: 10.0,
              top: 600.0,
              right: 10,
              child: GestureDetector(
                onTap: () {

                  showModalBottomSheet(context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                    ),
                    builder: (context)=>PaymentPage(),
                    //isScrollControlled: true,
                  );

                },
                child: new Container(

                  alignment: Alignment.center,
                  width: 350,
                  height: 50.0,
                  decoration: new BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.circular(12),

                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 138.0),
                        child: Text('   Done ',
                          style: TextStyle(color: Colors.white,
                              fontSize: 18
                          ),),

                      )
                    ],
                  ),
                ),
              )
          ),
        ]
      ),
    );
  }
}
