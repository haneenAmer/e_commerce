import 'package:flutter/material.dart';
import 'package:shoppingonline/paymenpage.dart';
import 'package:shoppingonline/ShoopingCard.dart';
import 'package:shoppingonline/Search.dart';
import 'package:shoppingonline/TrendingItems.dart';
import 'package:shoppingonline/shirts.dart';
import 'itemcard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  get optionStyle =>  TextStyle(fontSize: 25, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
     const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
    List imagelist = [
      'images/zara2.jpg',
      'images/lc.jpg',
      'images/aldo.jpg',
      'images/shein.jpg',
    ];
    List shimagelist = [
      'images/aldo.jpg',
      'images/sh2.png',
      'images/sh3.png',
      'images/sh4.png',
      'images/sh5.png',
      'images/sh6.png',
    ];

    TabController _tabcontroller = TabController(length: 5, vsync: this);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffe5a8b5),
        //Color(0xff9a9290),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffe5a8b5),
            leading: Center(
              child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10),
                  child: Container(
                      height: 150,
                      width: 300,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'images/lolo11.png',
                        ),
                      ))

                  //       Container(
                  //         height: 200,width: 700,
                  //            child: Image(
                  //             fit: BoxFit.fill,
                  //              image: AssetImage('images/lolo11.png'),)
                  // ),
                  ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0, top: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                  child: Icon(
                    Icons.search,
                    size: 29,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: TabBar(
                     //indicator: CircleTabIndicator(color: Colors.green, radius: 4),
                    labelColor: Colors.black,
                    indicatorWeight: 5,
                    labelStyle: TextStyle(fontSize: 15),
                    controller: _tabcontroller,
                    isScrollable: true,
                    indicatorColor: Colors.black54,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text(
                          'Brands',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Shirts',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Skerts',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Trousers',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Shoes',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 300, width: double.maxFinite,
                  child: TabBarView(
                    controller: _tabcontroller,
                    children: [
                      ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (contex, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                print('object');
                              },
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image:
                                            AssetImage("${imagelist[index]}"))),
                              ),
                            ),
                          );
                        },
                      ),
                      Container(
                        child: GridView(
                          children: [
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>shoopingcard()));
                              },
                                child: Shirts('images/sh1.png', 'white T-shirt')),
                            Shirts('images/sh2.png', 'purple T-shirt'),
                            Shirts('images/sh3.png', 'orange T-shirt'),
                            Shirts('images/sh4.png', 'tredy T-shirt'),
                            Shirts('images/sh5.png', 'tredy T-shirt'),
                            Shirts('images/sh6.png', 'tredy T-shirt'),
                            Shirts('images/sh7.png', 'tredy T-shirt'),
                            Shirts('images/sh8.png', 'tredy T-shirt'),
                          ],
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 10),
                        ),
                      ),
                      Container(
                        child: GridView(
                          children: [
                            GestureDetector(
                              onTap:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>shoopingcard()));
                              },
                                child: Shirts('images/sk1.png', 'white T-shirt')),
                            Shirts('images/sk2.png', 'purple T-shirt'),
                            Shirts('images/sk3.png', 'orange T-shirt'),
                            Shirts('images/sk4.png', 'tredy T-shirt'),
                            Shirts('images/sk1.png', 'tredy T-shirt'),
                            Shirts('images/sk6.png', 'tredy T-shirt'),

                          ],
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 10),
                        ),
                      ),


                      Text('3'),
                      Text('3'),
                    ],
                  ),

//                 child: TabBarView(
//                   controller: _tabcontroller,
//
//                   children: [
//
// // ListView.builder(
// //
// //     itemBuilder: (_,index){
// //   return Row(
// //     children: [
// //       Brands(),
// //     ],
// //   );
// //
// //
// //
// //
// // }
// // ),
//
//
//
//                     ListView(
//                       children: [
//
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 10.0),
//                               child: Text(
//                                 'Most Sellig',
//                                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                               ),
//                             ),
//
//                             SizedBox(height: 25,),
//                            Brands(),
//                            Brands(),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Text('2'),
//                     Text('2'),
//                     Text('2'),
//                     Text('2'),
//
//                   ],
//                 ),
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
      ),
    );
  }



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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>itemcard()));
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



}

// class CircleTabIndicator extends Decoration{
//   late final Color color;
//   late final double raduis;
//   CircleTabIndicator (
//   {
//     required this.color,
//     required this.raduis,
// }
//       );
//   @override
//   BoxPainter createBoxPainter([VoidCallback?onchanged]) {
//     return _Circlepainter extends BoxPainter(
//       color:color,raduis:raduis,
//     );
//   }
//
//
// }
//
// class _Circlepainter extends BoxPainter {
//   final double radius;
//   late final color;
//   _Circlepainter({
//     required this.color,required this.radius
// });
//   @override
//   void paint (
//       Canvas canvas, Offset offset,ImageConfiguration cfg){
//     late Paint _paint;
//     _paint=Paint()..color=color;
//     _paint=_paint ..isAntiAlias = true;
//     final Offset circlrOffset=
//         offset+ Offset(cfg.size!.width/2,cfg.size!.height-radius);
//
//     canvas.drawCircle(circlrOffset, radius, _paint);
//
//   }
//
// }
