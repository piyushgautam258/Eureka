import 'package:eureka_poc/components/ticketGeneralInfo.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class TicketTab extends StatefulWidget {
  const TicketTab({super.key});

  @override
  State<TicketTab> createState() => _TicketTabState();
}

class _TicketTabState extends State<TicketTab> {
  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   width: 400,
        //   height: 133,
        // child:
        MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            // toolbarHeight: 2,

            title: Center(
              child: Container(
                width: 350,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ticket#',
                        style: TextStyle(
                          color: Color.fromRGBO(123, 130, 149, 1.000),
                          fontSize: 17,
                        )),
                    Container(
                      width: 80,
                      height: 33,
                      // color: Colors.black,
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(16.0),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text('\₹ 00.00',
                            style: TextStyle(
                              fontSize: 17,
                              color: Color.fromRGBO(240, 242, 248, 1),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(242, 244, 250, 1.000),
            bottom: TabBar(
              labelColor: Color.fromARGB(255, 78, 73, 184),
              indicatorWeight: 5,
              unselectedLabelColor: Color.fromRGBO(123, 130, 149, 1.000),
              indicatorColor: Color.fromARGB(255, 78, 73, 184),
              labelStyle: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,

                // fontFamily: 'Family Name',
              ),
              tabs: [
                Container(
                  width: 120,
                  height: 45,
                  child: const Tab(
                    text: 'General info',
                  ),
                ),
                Container(
                  width: 100,
                  height: 45,
                  child: const Tab(
                    text: 'Spares',
                  ),
                ),
                Container(
                  width: 100,
                  child: const Tab(
                    text: 'AMC',
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: TicketGeneralInfo()),
              Center(child: Text('Spares')),
              Center(child: Text('AMC')),
            ],
          ),
        ),
      ),
    );
    // );
  }
}
