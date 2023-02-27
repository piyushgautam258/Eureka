import 'package:eureka_poc/components/ticket_bottomBar.dart';
import 'package:eureka_poc/components/ticket_tab.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 760,
      width: 400,
      child: Scaffold(
        // appBar: TicketTab(),
        body: Container(
          // height: 130,
          // width: 400,
          child: const TicketTab(),
        ),
        // bottomNavigationBar: TicketBottomBar(),
      ),
    );
  }
}
