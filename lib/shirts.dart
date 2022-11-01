import 'package:flutter/material.dart';

Container Shirts(
String sh_image,
String sh_name,
    )
{
    return Container(
        child:
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
              height: 250,
              width: 225,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      height: 120,
                      width: 120,
                      color: Colors.white,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(sh_image),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0.0, top: 0),
                    child: Text(
                      sh_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text(
                      //   'XS,S,M,L,XL,XXL',
                      //   style:
                      //   TextStyle(color: Colors.grey, fontSize: 10),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0,bottom: 10),
                        child: GestureDetector(
                          onTap: () {
                            print('hi');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text('Show'),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ])

    );
  }

