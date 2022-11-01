import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ThanksPage extends StatefulWidget {
  const ThanksPage({Key? key}) : super(key: key);

  @override
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5a8b5),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                SpinKitPianoWave(
                  color: Colors.black,
                  size: 50.0,
                ),SpinKitPianoWave(
                  color: Colors.black,
                  size: 50.0,
                ),
                SizedBox(width: 12,),
                Container(
                  height: 122,
                  width: 122,
                  child:Image(image:AssetImage('images/shipped.png') ,)
                ),
              ],
            ),
          ),
          SizedBox(width: 25,),
          Text('The Order in the Way 🤩 ',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20
            ),)

        ],
      ) ,
    );
  }
}
