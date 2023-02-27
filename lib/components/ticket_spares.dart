import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../data_json/product_details.dart';

class TicketSpares extends StatelessWidget {
  const TicketSpares({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spares_Detail(),
          // Container(
          //   height: 30,
          //   // width: 400,
          //   padding: EdgeInsets.all(2),
          //   color: Color.fromRGBO(242, 244, 250, 1),
          //   child: Column(
          //     // mainAxisAlignment: MainAxisAlignment.start,
          //     // crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Spares',
          //         style: TextStyle(
          //           fontSize: 14,
          //           color: Color.fromARGB(247, 240, 34, 19),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(28.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(5.0),
              color: Color.fromARGB(255, 16, 16, 16),
              // border: Border.all(
              //   color: Color.fromARGB(247, 252, 118, 109),
              //   width: 1,
              // ),
            ),
            height: 56,
            // color: Colors.purple,
            // child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Add Additional Spares",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            // ),
          ),
        ),
      ),
    );
  }
}

class Spares_Detail extends StatelessWidget {
  const Spares_Detail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: new EdgeInsets.symmetric(horizontal: 29.0, vertical: 13),
        height: 468,
        width: 350,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Spares You May\nRequire For This Work',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 153,
                  // color: Color.fromARGB(255, 38, 28, 176),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(5.0),
                    color: Color.fromARGB(255, 249, 220, 219),
                    // border: Border.all(
                    //   color: Color.fromARGB(247, 252, 118, 109),
                    //   width: 1,
                    // ),
                  ),
                  // width: 300,
                  // margin: new EdgeInsets.symmetric(horizontal: 1.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 64,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text(
                                      '#374783',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromARGB(
                                              255, 116, 115, 115)),
                                    ),
                                  ),
                                  Text(
                                    'Spare 1',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 50,
                                // height: 140,
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.all(10.0),
                              //   child:
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 155,
                                      // width: 200,
                                      // decoration: new BoxDecoration(
                                      //   borderRadius:
                                      //       new BorderRadius.circular(20.0),
                                      //   color: Color.fromARGB(255, 245, 245, 248),
                                      //   // border: Border.all(
                                      //   //   color: Color.fromARGB(247, 252, 118, 109),
                                      //   //   width: 1,
                                      //   // ),
                                      // ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.error_rounded,
                                            size: 20,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Not in your stock",
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 73,
                        width: 335,
                        color: Color.fromARGB(255, 234, 210, 206),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Text(
                                        'Available with one Person \nnear your location',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 13, 13, 13)),
                                      ),
                                    ),
                                    // Text(
                                    //   'Spare 1',
                                    //   style: TextStyle(
                                    //       fontSize: 15,
                                    //       fontWeight: FontWeight.w500,
                                    //       color: Colors.black),
                                    // ),
                                  ],
                                ),
                                SizedBox(
                                  width: 15,
                                  // height: ,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 78,
                                        child: Container(
                                          width: 60,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.black,
                                                elevation: 1),
                                            onPressed: () {},
                                            child: Text(
                                              'Request',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ),

                                        // ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // SingleChildScrollView(
                //   child:

                Container(
                  height: 102,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(5.0),
                    color: Color.fromRGBO(240, 242, 248, 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        '#374783',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 116, 115, 115)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'Spare 1',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Free of charge',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color:
                                                Color.fromARGB(255, 88, 88, 88),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 130,
                            // height: 100,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Container(
                                height: 40,
                                width: 40,

                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  color: Colors.black,
                                ),
                                child:
                                    // Padding(
                                    //   padding: const EdgeInsets.all(20.0),
                                    //   child:
                                    Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 33,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                // ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 102,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(5.0),
                    color: Color.fromRGBO(240, 242, 248, 1),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        '#374783',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color.fromARGB(
                                                255, 116, 115, 115)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        'Spare 1',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text('\₹1200',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromARGB(
                                                  255, 88, 88, 88),
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 160,
                            // height: 100,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: Container(
                                height: 40,
                                width: 40,

                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  color: Colors.black,
                                ),
                                child:
                                    // Padding(
                                    //   padding: const EdgeInsets.all(20.0),
                                    //   child:
                                    Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 33,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                // ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
