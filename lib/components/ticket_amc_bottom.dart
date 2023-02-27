// import 'package:flutter/material.dart';

// class TicketAMCBottomBar extends StatefulWidget {
//   const TicketAMCBottomBar({super.key});

//   @override
//   State<TicketAMCBottomBar> createState() => _TicketAMCBottomBarState();
// }

// class _TicketAMCBottomBarState extends State<TicketAMCBottomBar> {
//   int _selectedIndex = 0;
//   final ScrollController _homeController = ScrollController();

//   Widget _listViewBody() {
//     return ListView.separated(
//         controller: _homeController,
//         itemBuilder: (BuildContext context, int index) {
//           return Center(
//             child: Text(
//               'Item $index',
//             ),
//           );
//         },
//         separatorBuilder: (BuildContext context, int index) => const Divider(
//               thickness: 1,
//             ),
//         itemCount: 50);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return
//         // Container(
//         //   child: BottomNavigationBar(
//         //     showSelectedLabels: false, // <-- HERE
//         //     showUnselectedLabels: false,
//         //     backgroundColor: Color.fromARGB(255, 12, 163, 50),
//         //     iconSize: 20,
//         //     items: const <BottomNavigationBarItem>[
//         //       BottomNavigationBarItem(
//         //         label: '',
//         //         icon: Text(
//         //           "Reshedule",
//         //           style: TextStyle(
//         //             color: Color.fromRGBO(247, 247, 249, 1),
//         //             fontSize: 19,
//         //           ),
//         //         ),
//         //       ),
//         //       BottomNavigationBarItem(
//         //         icon: Text(
//         //           'Mark as Complete',
//         //           style: TextStyle(
//         //             color: Color.fromRGBO(247, 247, 249, 1),
//         //             fontSize: 19,
//         //           ),
//         //         ),
//         //         label: '',
//         //       ),
//         //     ],
//         //     currentIndex: _selectedIndex,

//         //   ),
//         // );
//         // );

//         Container(
//       height: 68,
//       width: 390,
//       // color: Colors.amber,
//       child: Row(
//         children: [
//           InkWell(
//             onTap: () {},
//             child: Container(
//               height: 68,
//               width: 195,
//               color: Colors.black,
//               child: Center(
//                 child: Text(
//                   'Mark as Pending',
//                   style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: () {},
//             child: Container(
//               height: 80,
//               width: 197,
//               color: Color.fromARGB(255, 59, 202, 88),
//               child: Center(
//                 child: Text(
//                   'Mark as Complete',
//                   style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:eureka_poc/screen/ticketChargesScreen.dart';
import 'package:flutter/material.dart';

class TicketAMCBottomBar extends StatefulWidget {
  const TicketAMCBottomBar({super.key});

  @override
  State<TicketAMCBottomBar> createState() => _TicketAMCBottomBarState();
}

class _TicketAMCBottomBarState extends State<TicketAMCBottomBar> {
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
                  'Mark as Pending',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TicketChargesScreen()),
              );
            },
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
