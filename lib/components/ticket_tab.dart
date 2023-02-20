import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class TiketTab extends StatefulWidget {
  const TiketTab({super.key});

  @override
  State<TiketTab> createState() => _TiketTabState();
}

class _TiketTabState extends State<TiketTab> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Ticket#'),
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromARGB(255, 206, 205, 208),
            bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 28, 18, 227),
              tabs: [
                Tab(
                  text: 'General Info',
                ),
                Tab(
                  text: 'Spares',
                ),
                Tab(
                  text: 'AMC',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('DOGS')),
              Center(child: Text('CATS')),
              Center(child: Text('BIRDS')),
            ],
          ),
        ),
      ),
    );
  }
}
