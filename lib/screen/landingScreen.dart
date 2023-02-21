import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset('../images/header.png'),
          ),
          Container(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Hey ',
                      style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(230, 0, 0, 0)),
                    ),
                    Text(
                      'John!',
                      style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 52, 148)),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Text(
                  'Enter your PIN',
                  style: TextStyle(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(height: 29,),
                PinCodeFields(
                  length: 4,
                  onComplete: (result) {
                    // Your logic with code
                    print(result);
                  },
                ),
                SizedBox(height: 110,),
                Row(children: [
                  Image.asset('../images/smile.png'),
                                  SizedBox(width: 10,),

                  Text(
                  'Unlock with Face ID',
                  style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(width: 65,),

                 Text(
                  'Forgot your Pin?',
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
