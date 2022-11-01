import 'package:flutter/material.dart';
import 'package:shoppingonline/paymenpage.dart';

Padding Trending(
  String images,
  String name,
  String des,
  String des2,

) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Stack(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
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
                          image: AssetImage(images),
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
                          padding: const EdgeInsets.only(right: 10.0, top: 20),
                          child: Text(
                            name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          des,
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          des2,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'XS,S,M,L,XL,XXL',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 48.0),
                              child: GestureDetector(
                                onTap: () {

                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text('Show'),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ])
      ],
    ),
  );
}
