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
              child: Container(
                width: 181,
                height: 41,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top:Radius.circular(20))
                          ),
                          context: context,
                          builder: (context) => buildSheet());
                    },
                    child: Center(child: Text("Other Payment Options"))),
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

class buildSheet extends StatelessWidget {
  const buildSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 639,

      decoration: new BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),

      borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(25.0),
            topRight: const Radius.circular(25.0))),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'Payment Options',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          Container(
              height: 190,
              width: 320,
              padding: EdgeInsets.all(29),
              color: Color.fromRGBO(0, 242, 244, 250),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Image.asset('../assets/images/cashicon.png'),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'I’ve collected ₹1200.00 from “Client name”',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 68,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(16.0),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 320,
              width: 320,
              padding: EdgeInsets.all(29),
              color: Color.fromRGBO(0, 242, 244, 250),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Debit/Credit card',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      Image.asset('../assets/images/cardicon.png'),
                    ],
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'Send payment link to customer”',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 296,
                    height: 120,
                    decoration: BoxDecoration(
                                                borderRadius: new BorderRadius.circular(5.0),

                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(
                    color: Color.fromARGB(255, 0, 0, 0),
                    width: 0.5,
                  )),

                    child: Center(child: 
                    Text("Hello Customer name, Your Bill amount is ₹1200.00 on DD/MM/YYYY. Click link to download the invoice and kindly do the payment.",style: TextStyle(fontSize: 13.4),)
                    
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 68,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(16.0),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            'Send',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
              
              
              ),
        ],
      ),
    );
  }
}
