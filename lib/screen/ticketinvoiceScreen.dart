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
          Container(
            height: 550,
            width: 400,
            padding: EdgeInsets.all(29),
            color: Color.fromRGBO(242, 244, 250, 1),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment Method',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(62, 64, 69, 1)),
                  ),
                ]),
          )
        ],
      ),
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
