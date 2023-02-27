import 'package:flutter/material.dart';

class TicketBottomBar extends StatefulWidget {
  const TicketBottomBar({super.key});

  @override
  State<TicketBottomBar> createState() => _TicketBottomBarState();
}

class _TicketBottomBarState extends State<TicketBottomBar> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 390,
      // color: Colors.amber,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 68,
              width: 195,
              color: Colors.black,
              child: Center(
                child: Text(
                  'Reschedule',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 80,
              width: 197,
              color: Color.fromARGB(255, 59, 202, 88),
              child: Center(
                child: Text(
                  'Mark as Complete',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
