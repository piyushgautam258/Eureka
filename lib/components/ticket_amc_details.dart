import 'package:eureka_poc/components/ticket_amc_bottom.dart';
import 'package:eureka_poc/components/ticket_bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Ticket_AMC extends StatelessWidget {
  const Ticket_AMC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AMC_Details(),
          // ProductDetails(),
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
          //         'Payment Method',
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
      bottomNavigationBar: TicketAMCBottomBar(),
    );
  }
}

class AMC_Details extends StatelessWidget {
  const AMC_Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 278,
              width: 400,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.all(25.0),
                          //   child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  // Padding(
                                  //   padding: const EdgeInsets.all(1.0),
                                  //   child:

                                  Text(
                                    '1 Year Package \nwith 2 Free Services',
                                    style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            Color.fromARGB(255, 240, 231, 231),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                          // ),
                          SizedBox(
                            width: 90,
                            // height: 100,
                          ),
                          InkWell(
                            onTap: () {},
                            child:
                                //  Padding(
                                //   padding: const EdgeInsets.all(1.0),
                                //   child:
                                Container(
                              height: 30,
                              width: 81,

                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(5.0),
                                color: Color.fromARGB(255, 246, 246, 246),
                              ),

                              child:
                                  // Padding(
                                  //   padding: const EdgeInsets.all(20.0),
                                  //   child:
                                  Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          decoration: new BoxDecoration(
                                            borderRadius:
                                                new BorderRadius.circular(22.0),
                                            color: Color.fromARGB(
                                                255, 189, 235, 195),
                                          ),
                                          child: Icon(
                                            Icons.done,
                                            size: 18,
                                            color:
                                                Color.fromARGB(255, 6, 154, 35),
                                          ),
                                        ),
                                        Text(" Active")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // ),
                            ),
                            // ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 160,
                                height: 120,
                                color: Color.fromARGB(255, 62, 62, 61),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "30",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                    Text(
                                      "Day left",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                width: 160,
                                height: 120,
                                color: Color.fromARGB(255, 62, 62, 61),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "01",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 50,
                                      ),
                                    ),
                                    Text(
                                      "Service Left",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(25.0),
                              color: Color.fromARGB(255, 116, 96, 82),
                            ),
                            child: Icon(
                              Icons.circle,
                              color: Color.fromARGB(255, 208, 116, 18),
                              size: 16,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Recommend customer to extend the package.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 260,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  // height: 200,
                  child: Row(
                    children: [
                      Column(
                        children: [
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
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
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text(
                                                  '3 Years - 8 Free Services',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Text(
                                                  '\₹1500',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color.fromARGB(
                                                          255, 88, 88, 88),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
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
                                            borderRadius:
                                                new BorderRadius.circular(25.0),
                                            color: Colors.black,
                                          ),
                                          child:
                                              // Padding(
                                              //   padding: const EdgeInsets.all(20.0),
                                              //   child:
                                              Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
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
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text(
                                                  '2 Years - 4 Free Services',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Text(
                                                  '\₹1000',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color.fromARGB(
                                                          255, 88, 88, 88),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 33,
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
                                            borderRadius:
                                                new BorderRadius.circular(25.0),
                                            color: Colors.black,
                                          ),
                                          child:
                                              // Padding(
                                              //   padding: const EdgeInsets.all(20.0),
                                              //   child:
                                              Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
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
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Text(
                                                  '5 Years - 5 Free Services',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
                                                child: Text(
                                                  '\₹2200',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Color.fromARGB(
                                                          255, 88, 88, 88),
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 33,
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
                                            borderRadius:
                                                new BorderRadius.circular(25.0),
                                            color: Colors.black,
                                          ),
                                          child:
                                              // Padding(
                                              //   padding: const EdgeInsets.all(20.0),
                                              //   child:
                                              Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(3.0),
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
              ),
            ),
          ),
          // Container(
          //   height: 68,
          //   width: 390,
          //   // color: Colors.amber,
          //   child: Row(
          //     children: [
          //       InkWell(
          //         onTap: () {},
          //         child: Container(
          //           height: 68,
          //           width: 195,
          //           color: Colors.black,
          //           child: Center(
          //             child: Text(
          //               'Mark as Pending',
          //               style: TextStyle(
          //                   fontSize: 16,
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.w500),
          //             ),
          //           ),
          //           // child: ElevatedButton(
          //           //   style: ElevatedButton.styleFrom(
          //           //       backgroundColor: Color.fromARGB(255, 0, 0, 0),
          //           //       elevation: 1),
          //           //   onPressed: () {},
          //           //   child: Text(
          //           //     'Reschedule',
          //           //     style: TextStyle(fontSize: 15),
          //           //   ),
          //           // ),
          //         ),
          //       ),
          //       InkWell(
          //         onTap: () {},
          //         child: Container(
          //           height: 80,
          //           width: 195,
          //           color: Color.fromARGB(255, 59, 202, 88),
          //           child: Center(
          //             child: Text(
          //               'Mark as Complete',
          //               style: TextStyle(
          //                   fontSize: 16,
          //                   color: Colors.white,
          //                   fontWeight: FontWeight.w500),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
