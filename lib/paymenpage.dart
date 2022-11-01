import 'package:flutter/material.dart';
import 'package:shoppingonline/infornationpage.dart';
import 'package:shoppingonline/ShoopingCard.dart';
import 'package:shoppingonline/paymenpage.dart';
import 'paymenpage.dart';
import 'ThanksPage.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black;
  }

  Color getColor2(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black;
  }

  Color getColor3(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe5a8b5),
      appBar: AppBar(
        backgroundColor: Color(0xffe5a8b5),
        elevation: 0,

      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Choose payment Option ',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.white38.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'By Visa Card ',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Spacer(),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.white38.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'By Zain cash',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Spacer(),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                              MaterialStateProperty.resolveWith(getColor2),
                              value: isChecked2,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked2 = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 60,
                        width: 390,
                        decoration: BoxDecoration(
                            color: Colors.white38.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'When recieved',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Spacer(),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                              MaterialStateProperty.resolveWith(getColor3),
                              value: isChecked3,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked3 = value!;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 145.0,top: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ThanksPage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 70,width: 80,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                        child: Text('Finish'),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
