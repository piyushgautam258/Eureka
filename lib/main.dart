import 'package:eureka_poc/screen/ticketScreen.dart';
import 'package:eureka_poc/screen/ticketinvoiceScreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
<<<<<<< HEAD
<<<<<<< Updated upstream
      home: const LandingScreen(),
=======
      home: const ticketinvoiceScreen(),
>>>>>>> Stashed changes
=======
      home: const TicketScreen(),
>>>>>>> 15bc7fe208112c353583dd29492259387bd6c28e
    );
  }
}
