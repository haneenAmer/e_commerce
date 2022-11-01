
import 'package:flutter/material.dart';
import 'package:shoppingonline/ShoopingCard.dart';
 class itemcard extends StatefulWidget {
   const itemcard({Key? key}) : super(key: key);

   @override
   State<itemcard> createState() => _itemcardState();
 }

 class _itemcardState extends State<itemcard> {
   get optionStyle =>  TextStyle(fontSize: 25, fontWeight: FontWeight.w600);
   var list = ['XS', 'S', 'M','L','XL','XXL'];

   int selectedIndex=1;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
         appBar: AppBar(
           elevation: 0,
           backgroundColor:Color(0xffe5a8b5),
           leading: GestureDetector(
               onTap: (){
                 Navigator.pop(context);
               },
               child: Icon(Icons.arrow_back,color: Colors.black,)),
         ),
         backgroundColor: Color(0xffe5a8b5),
         body: ListView(
           children: [
             Column(
               children: [
                 Container(
                   width: double.infinity,
                   height: 300,
                   child: Image(image: AssetImage('images/t.png'),),
                 ),

                 Container(
                   width: double.infinity,height: 400,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                           topRight: Radius.circular(50)

                       ),

                       color: Color(0xfff4f4fc)
                   ),
                   child: Padding(
                     padding: const EdgeInsets.only(top: 30.0,left: 18),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Text('SunFlower Jacket',
                               style: optionStyle,),
                             Spacer(),
                             Padding(
                               padding: const EdgeInsets.only(right: 28.0),
                               child: Icon(Icons.favorite),
                             )
                           ],
                         ),
                         SizedBox(height: 20,),
                         SizedBox(height: 5,),
                         Text('Beatiful jacket in yellow color was the trending last two months',
                           style:TextStyle(
                               fontSize: 15,color: Colors.grey
                           ),),
                         SizedBox(
                           height: 20,

                         ),
                         Text('Chose your size',
                           style: TextStyle(
                             fontSize: 20,
                           ),),
                         SizedBox(
                           height: 12,

                         ),
                         Container(
                           height: 40,
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                               itemCount: 5,
                               itemBuilder: (context,index){
                                 return InkWell(
                                   onTap: (){
                                     setState(() {
                                       selectedIndex=index;
                                     });
                                   },
                                   child: Container(
                                     alignment: Alignment.center,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(12),
                                       color: selectedIndex==index?Colors.black:Colors.grey,
                                     ),
                                     width: 40,
                                     margin: EdgeInsets.only(right: 10),

                                     child: Text(list[index],style: TextStyle(
                                         color: selectedIndex==index?Colors.white:Colors.black
                                 ),)
                                   ),
                                 );
                               }),
                         ),

SizedBox(height: 90,),
                         Stack(
                           children: [
                             Center(
                               child: Container(
                                 height: 60,width: 300,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(30),
                                     color: Colors.grey
                                 ),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top: 18.0,left: 58),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Text('20,000 IQD',style: TextStyle(
                                       color: Colors.white
                                   ),),
                                   Spacer(),
                                   Padding(
                                     padding: const EdgeInsets.only(right: 58.0,bottom: 20),
                                     child: GestureDetector(
                                       onTap: (){
                                         Navigator.push(context, MaterialPageRoute(builder: (context)=>shoopingcard()));
                                       },
                                       child: Container(
                                         alignment: Alignment.center,
                                         height: 30,width: 100,
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(30),
                                             color: Colors.white
                                         ),
                                         child: Text('Add to card '),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),

                           ],
                         ),
                       ],
                     ),
                   ),
                 ),


               ],
             ),
           ],
         ),
       );
     }


     }




