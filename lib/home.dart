import 'package:flutter/material.dart';
import 'grid.dart';
import 'bottom.dart';

class Guard extends StatelessWidget {
  const Guard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu_outlined,
            color: Colors.black,
          ),
          title: Text(
            'KOKO GUARD',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text('Hi Shyam , you have',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('12',
                          style: TextStyle(
                            color: Color.fromARGB(255, 243, 5, 5),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      SizedBox(
                        width: 12,
                      ),
                      Text('tasks to do today',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('T o w e r 4  |',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ),
                      Icon(
                        Icons.av_timer_outlined,
                        size: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('7 A M - 1 P M ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Grid(
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Navigation(),
      ),
    );
  }
}
