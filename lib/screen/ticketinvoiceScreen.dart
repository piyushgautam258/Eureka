import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class ticketinvoiceScreen extends StatelessWidget {
  const ticketinvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Invoice_card(),
          Qrcode(),
        ],
      ),
    );
  }
}

class Qrcode extends StatelessWidget {
  const Qrcode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 400,
      padding: EdgeInsets.all(29),
      color: Color.fromRGBO(242, 244, 250, 1),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(230, 0, 0, 0)),
                ),
                Text(
                  'UPI',
                  style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(230, 0, 0, 0)),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              'Customer can scan the below QR code for making payment through GPay, PhonePe or any other UPI payment App.',
              style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(230, 0, 0, 0)),
            ),
            SizedBox(height: 55),
            Center(
              child: Container(
                height: 220,
                width: 220,
                child: Image.asset('../images/qrcode.png'),
              ),
            ),
                        SizedBox(height: 55),

            Center(
              child: GestureDetector(
                onTap:(){
                  showModalBottomSheet(
                    context: context,
                    builder: (context)=>buildSheet(),
                    );

                },
                child: Container(
                  width: 181,
                  height: 41,
                        padding: EdgeInsets.all(12),
                          
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Text("Other Payment Options"),
                ),
              ),
            ),
          ]),
    );
  }
}





class Invoice_card extends StatelessWidget {
  const Invoice_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      padding: EdgeInsets.all(29),
      color: Color.fromRGBO(0, 53, 148, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 23),
          Text(
            'Ticket#',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.4)),
          ),
          SizedBox(height: 23),
          Text(
            'Invoice',
            style: TextStyle(
                fontSize: 22, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(height: 17),
          Text(
            '₹1200.00',
            style: TextStyle(
                fontSize: 50, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(height: 10),
          Text(
            'Inclusive of all taxes',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.5)),
          ),
        ],
      ),
    );
  }
}
<<<<<<< HEAD
<<<<<<< Updated upstream
=======
=======
>>>>>>> 15bc7fe208112c353583dd29492259387bd6c28e


class buildSheet extends StatelessWidget {
  const buildSheet({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Column(
      children: [
        SizedBox(height: 40,),
        Text(
            'Payment Options',
            style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
          ),
      ],
    );
  }
}
>>>>>>> Stashed changes
=======
    return Text("hello");
  }
}
>>>>>>> 15bc7fe208112c353583dd29492259387bd6c28e
