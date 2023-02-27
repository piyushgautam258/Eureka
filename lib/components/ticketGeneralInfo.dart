import 'package:eureka_poc/components/ticket_bottomBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../data_json/product_details.dart';

class TicketGeneralInfo extends StatelessWidget {
  const TicketGeneralInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          General_Info_Detail(),
        ],
      ),
      bottomNavigationBar: TicketBottomBar(),
    );
  }
}

class General_Info_Detail extends StatelessWidget {
  const General_Info_Detail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: new EdgeInsets.symmetric(horizontal: 29.0, vertical: 13),
        height: 524,
        width: 350,
        child: Column(
          children: [
            Row(
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
                    SizedBox(
                      width: 130,
                    ),
                    Center(
                      child: Container(
                        margin: new EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 5),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(5.0),
                          color: Color.fromARGB(255, 250, 225, 222),
                          border: Border.all(
                            color: Color.fromARGB(247, 252, 118, 109),
                            width: 1,
                          ),
                        ),
                        width: 100,
                        height: 30,
                        child: Center(
                          child: Text(
                            "complaint",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(247, 236, 74, 62)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  height: 20,
                  // width: 232,
                  // margin: new EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "RO Purifier Not Working",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 48,
                  // width: 300,
                  // margin: new EdgeInsets.symmetric(horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'LorenvIpsum has been the industry\'s,\nstandard dummy text ever since the 1500s.',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Column(
                        children: List.generate(productDetails.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: 1, right: 1, bottom: 3),
                            child: Container(
                              height: 49,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(240, 242, 248, 1),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      productDetails[index]['title'],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromARGB(255, 112, 111, 111),
                                          fontWeight: FontWeight.w500),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      productDetails[index]['detail'],
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromARGB(255, 78, 77, 77),
                                          fontWeight: FontWeight.w500),
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
            SizedBox(
              height: 2,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  // color: Color.fromARGB(255, 38, 28, 176),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(5.0),
                    color: Color.fromARGB(255, 46, 37, 183),
                    // border: Border.all(
                    //   color: Color.fromARGB(247, 252, 118, 109),
                    //   width: 1,
                    // ),
                  ),
                  // width: 300,
                  // margin: new EdgeInsets.symmetric(horizontal: 1.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    child: Text(
                                      'Customer Details',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromARGB(255, 187, 186, 186)),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Sarah Williams',
                                  // textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 223, 219, 219),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 120,
                              // height: ,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: new BoxDecoration(
                                      borderRadius:
                                          new BorderRadius.circular(22.0),
                                      color: Color.fromARGB(255, 245, 245, 248),
                                      // border: Border.all(
                                      //   color: Color.fromARGB(247, 252, 118, 109),
                                      //   width: 1,
                                      // ),
                                    ),
                                    // child: Icon(
                                    //   Icons.phone,
                                    //   size: 25,
                                    //   color: Color.fromARGB(255, 125, 117, 117),
                                    // ),
                                    child: Image.asset(
                                      "assets/images/phone.png",
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          // width: ,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  '125, Lorem ipsum,\nmalad, west Mumbai- 400064.',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 223, 219, 219),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 35,
                                  width: 167,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        elevation: 1,
                                        backgroundColor: Colors.white),
                                    onPressed: () {},
                                    child: Text(
                                      'Open in Google Maps',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Child
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
