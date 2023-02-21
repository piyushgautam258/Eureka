import 'package:flutter/material.dart';

class TicketBottomBar extends StatefulWidget {
  const TicketBottomBar({super.key});

  @override
  State<TicketBottomBar> createState() => _TicketBottomBarState();
}

class _TicketBottomBarState extends State<TicketBottomBar> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  Widget _listViewBody() {
    return ListView.separated(
        controller: _homeController,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              'Item $index',
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
              thickness: 1,
            ),
        itemCount: 50);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        showSelectedLabels: false, // <-- HERE
        showUnselectedLabels: false,
        backgroundColor: Color.fromARGB(255, 12, 163, 50),
        iconSize: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            icon: Text(
              "Reshedule",
              style: TextStyle(
                color: Color.fromRGBO(247, 247, 249, 1),
                fontSize: 19,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Text(
              'Mark as Complete',
              style: TextStyle(
                color: Color.fromRGBO(247, 247, 249, 1),
                fontSize: 19,
              ),
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          switch (index) {
            case 0:
              // only scroll to top when current index is selected.
              if (_selectedIndex == index) {
                _homeController.animateTo(
                  0.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              }
              break;
            case 1:
              showModal(context);
              break;
          }
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),
    );
    // );
  }

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('Example Dialog'),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          )
        ],
      ),
    );
  }
}
