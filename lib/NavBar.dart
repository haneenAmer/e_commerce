// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
//
// class NavBar extends StatefulWidget {
//   const NavBar({Key? key}) : super(key: key);
//
//   @override
//   State<NavBar> createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       color: Color(0xffd6b39f),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only( ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Eillen',
//                 style: TextStyle(color: Colors.black,
//                 fontSize: 30),),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 28.0),
//                   child: Container(
//                     height: 50,width: 50,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.fill,
//                           image: AssetImage('images/bt2.png'))
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ),
//           SizedBox(height: 130,),
//           SpinKitPouringHourGlassRefined(
//            color: Colors.black,
//             size: 30,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shoppingonline/profile.dart';
import 'Fav.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:shoppingonline/HomePage.dart';
import 'package:shoppingonline/ShoopingCard.dart';
import 'ShoopingCard.dart';




class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
   HomePage(),
    FFav(),
    shoopingcard(),

    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffe5a8b5),
        
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Color(0xffe5a8b5),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.favorite,
                    text: 'favorite',
                  ),
                  GButton(
                    icon: Icons.shopping_cart_sharp,
                    text: 'card',
                  ),

                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

