import 'package:flutter/material.dart';

class TicketBottomInvoice extends StatefulWidget {
  const TicketBottomInvoice({super.key});

  @override
  State<TicketBottomInvoice> createState() => _TicketBottomInvoiceState();
}

class _TicketBottomInvoiceState extends State<TicketBottomInvoice> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 390,
      color: Colors.black,
      // color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Text(
                  "Slide to generate Invoice",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 223, 219, 219),
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 100,
            ),
            Row(
              children: [
                Icon(
                  Icons.double_arrow,
                  size: 40,
                  color: Color.fromARGB(255, 88, 87, 87),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
