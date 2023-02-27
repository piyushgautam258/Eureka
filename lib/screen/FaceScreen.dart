import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FaceScreen extends StatelessWidget {
  const FaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [
         SizedBox(height: 200,),
          Image.asset('../assets/images/facerec.gif',
          ),
          SizedBox(height: 200,),
           Text(
            'Recognizing You!',
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
          ),
    ],
    ),
          backgroundColor: Color.fromRGBO(253, 253, 253, 1),

    );
  }
}