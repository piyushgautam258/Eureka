import 'package:eureka_poc/components/ticketBottomInvoice.dart';
import 'package:eureka_poc/components/ticket_amc_bottom.dart';
import 'package:eureka_poc/data_json/product_details.dart';
import 'package:eureka_poc/data_json/ticketCharges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TicketChargesScreen extends StatelessWidget {
  const TicketChargesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Text('Ticket#',
                                style: TextStyle(
                                    color: Color.fromRGBO(123, 130, 149, 1.000),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Charges",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 119,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(5.0),
                            color: Color.fromARGB(255, 219, 229, 248),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            'Customer Details',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color.fromARGB(
                                                    255, 86, 85, 85),
                                                fontWeight: FontWeight.w700),
                                          ),
                                          //   ],
                                          // ),
                                          // ),
                                          // ),
                                          // Column(
                                          //   children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Sarah Williams',
                                            // textAlign: TextAlign.right,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                            ),
                                            //   ),
                                            // ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '125, Lorem ipsum,\nMalad, west Mumbai- 400 064.',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromARGB(255, 48, 48, 48),
                                          ),
                                        ),
                                      ],
                                    ),
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Child
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Items",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              width: 165,
                            ),
                            Row(
                              children: [
                                Text(
                                  " Add Items",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                      color: Color.fromARGB(255, 54, 54, 54)),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: new BoxDecoration(
                                    borderRadius:
                                        new BorderRadius.circular(22.0),
                                    color: Colors.black,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Text("data"),
                        //   ],
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Column(
                                children: List.generate(chargesDetails.length,
                                    (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        left: 1, right: 1, bottom: 3),
                                    child: Container(
                                      height: 80,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(240, 242, 248, 1),
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      chargesDetails[index]
                                                          ['ticketNo'],
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Color.fromARGB(
                                                              255,
                                                              112,
                                                              111,
                                                              111),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  chargesDetails[index]
                                                      ['title'],
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              chargesDetails[index]['amount'],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color.fromARGB(
                                                      255, 97, 97, 97),
                                                  fontWeight: FontWeight.w800),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 37.2,
            ),
            Container(
              height: 66,
              width: 395,
              color: Color.fromARGB(255, 54, 17, 188),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Total",
                          style: TextStyle(
                              color: Color.fromARGB(255, 195, 193, 193),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 240,
                        ),
                        Text(
                          "\₹1200",
                          style: TextStyle(
                              color: Color.fromARGB(255, 228, 226, 226),
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: TicketBottomInvoice(),
    );
  }
}
