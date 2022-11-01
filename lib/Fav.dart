import 'package:flutter/material.dart';



class FFav extends StatefulWidget {
  const FFav({Key? key}) : super(key: key);

  @override
  State<FFav> createState() => _FFavState();
}

class _FFavState extends State<FFav> {
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,width: 200,
          child: Image(image: AssetImage('images/ffav.png'),),
        ),
        SizedBox(
          height: 12,
        ),
        Text('Add your favorite Items ',style:optionStyle ,)
      ],
    );
  }
}
