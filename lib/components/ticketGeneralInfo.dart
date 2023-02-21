import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TicketGeneralInfo extends StatelessWidget {
  const TicketGeneralInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Invoice_card(),
          Container(
            // height: 600,
            // width: 400,

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
      margin: new EdgeInsets.symmetric(horizontal: 29.0, vertical: 34),
      height: 20,
      width: 400,
      // padding: EdgeInsets.all(29),
      // color: Color.fromRGBO(242, 244, 250, 1),
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                Icons.watch_later_sharp,
                size: 20,
              ),
              Text(
                ' 09:00 AM',
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
            ],
          ),
          SizedBox(
            width: 190,
          ),
          Container(
            color: Colors.amber,
            // margin: new EdgeInsets.symmetric(L),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("data"),
              ],
            ),
          )
        ],
      ),
      //   ),
      // ]),
    );
  }
}
