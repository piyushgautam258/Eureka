import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.black,
        ),
        child: BottomNavigationBar(
      
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.note_add), label: "About", ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Product"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Contact"),
           
          ],
        ),
      ),

      backgroundColor: Color.fromRGBO(242, 244, 250, 1),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 110,
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You have',
                    style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(230, 0, 0, 0)),
                  ),
                  Text(
                    '5 Task Today!',
                    style: TextStyle(
                        fontSize: 22,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(230, 0, 0, 0)),
                  ),
                ],
              ),
              SizedBox(
                width: 105,
              ),
              GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        context: context,
                        builder: (context) => WeekSheet());
                  },
                  child: Image.asset('../assets/images/calender.png')),
              Image.asset('../assets/images/bell.png'),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  task_Card(),
                  SizedBox(
                    height: 10,
                  ),
                  task_Card()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container task_Card() {
    return Container(
      height: 380,
      width: 350,
      padding: EdgeInsets.all(29),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Icon(
              Icons.lock_clock,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '9:30 AM',
              style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(230, 0, 0, 0)),
            ),
            SizedBox(
              width: 120,
            ),
            Container(
              width: 86,
              height: 27,
              color: Color.fromRGBO(255, 234, 222, 0.4),
              child: Center(
                child: Text(
                  'complaint',
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(247, 100, 8, 1)),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'RO Purifier Not Working',
          style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(230, 0, 0, 0)),
        ),
        SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Container(
              width: 138,
              height: 60,
              color: Color.fromRGBO(228, 235, 250, 1),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product',
                    style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(230, 0, 0, 0)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Water Purifier',
                    style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(230, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 138,
              height: 60,
              color: Color.fromRGBO(228, 235, 250, 1),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Warranty info',
                    style: TextStyle(
                        fontSize: 10,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(230, 0, 0, 0)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Active',
                    style: TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(230, 0, 0, 0)),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Customer Detail',
                  style: TextStyle(
                      fontSize: 10,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(62, 64, 69, 1)),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Sarah Williams',
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                Text(
                  'Aareymilk Colony, 400065',
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ],
            ),
            Container(
              height: 80,
              width: 80,
              child: Image.asset('../assets/images/bluecall.png'),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 306,
          height: 47,
          color: Color.fromRGBO(228, 235, 250, 1),
          padding: EdgeInsets.all(5),
          child: Row(children: [
            Image.asset('../assets/images/arrow.png'),
            Text(
              'Estimated time to reach location',
              style: TextStyle(
                  fontSize: 10,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              '30min',
              style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ]),
        )
      ]),
    );
  }
}

class WeekSheet extends StatelessWidget {
  const WeekSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 639,
        padding: EdgeInsets.all(20),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0))),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Weekly Schedule',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'December 2022',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              height: 38,
            ),
            Row(
              children: [
                Text(
                  'Day',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(134, 0, 0, 0)),
                ),
                SizedBox(
                  width: 240,
                ),
                Text(
                  'Assigned Task',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(134, 0, 0, 0)),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 360,
              height: 52,
              padding: EdgeInsets.all(12),
              color: Colors.blueGrey[50],
              child: Row(
                children: [
                  Text(
                    '20',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Monday',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    '05',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 360,
              height: 52,
              padding: EdgeInsets.all(12),
              color: Colors.blueGrey[50],
              child: Row(
                children: [
                  Text(
                    '21',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Tuesday',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Text(
                    '06',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
                        SizedBox(height: 5),

            Container(
              width: 360,
              height: 52,
              padding: EdgeInsets.all(12),
              color: Colors.blueGrey[50],
              child: Row(
                children: [
                  Text(
                    '22',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Wednesday',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 173,
                  ),
                  Text(
                    '05',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
                        SizedBox(height: 5),

            Container(
              width: 360,
              height: 52,
              padding: EdgeInsets.all(12),
              color: Colors.blueGrey[50],
              child: Row(
                children: [
                  Text(
                    '23',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Thurday',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 205,
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
                        SizedBox(height: 5),

            Container(
              width: 360,
              height: 52,
              padding: EdgeInsets.all(12),
              color: Colors.blueGrey[50],
              child: Row(
                children: [
                  Text(
                    '24',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Friday',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 215,
                  ),
                  Text(
                    '00',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
                        SizedBox(height: 5),

            Container(
              width: 360,
              height: 52,
              padding: EdgeInsets.all(12),
              color: Colors.blueGrey[50],
              child: Row(
                children: [
                  Text(
                    '25',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Saturday',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  SizedBox(
                    width: 196,
                  ),
                  Text(
                    '02',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
