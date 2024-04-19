import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE6E6E6), Color(0xFFB6B6B6)],
              ),
            ),
          ),
          Positioned(
            top: 170.0,
            left: 15.0,
            right: 15.0,
            height: 240.0,
            child: Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Notificaciones Tapped');
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.notifications,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Notificaciones',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Señales de tránsito Tapped');
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.traffic,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Text(
                                  'Señales de',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'tránsito',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Abogados Tapped');
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.account_balance,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Abogados',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Leyes de tránsito Tapped');
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.gavel,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Text(
                                  'Leyes de',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'tránsito',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Infracciones de tránsito Tapped');
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.local_police,
                                  size: 40.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: [
                                Text(
                                  'Infracciones',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  'de tránsito',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
