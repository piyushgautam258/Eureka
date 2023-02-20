import 'package:eureka_poc/components/ticket_tab.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TiketScreen extends StatefulWidget {
  const TiketScreen({super.key});

  @override
  State<TiketScreen> createState() => _TiketScreenState();
}

class _TiketScreenState extends State<TiketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TiketTab(),
    );
  }
}
