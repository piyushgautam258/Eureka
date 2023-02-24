import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              SizedBox(width:105,),
             Image.asset('../assets/images/calender.png'),
             Image.asset('../assets/images/bell.png'),






            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child:          Column(
                children: [
                  task_Card(),
                  SizedBox(height: 10,),
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
           decoration:BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.white,
  
),

          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                SizedBox(width: 10,),
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
            SizedBox(height: 14,),
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
                      SizedBox(height: 6,),
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

            ],),

             Container(
              height: 80,
              width: 80,
              child: Image.asset('../assets/images/bluecall.png'),
            ),



            ],),
            SizedBox(height: 10,),
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
                      SizedBox(width: 40,),
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
