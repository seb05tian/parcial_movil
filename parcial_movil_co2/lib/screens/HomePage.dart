import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            top: 0,
            left: 0,
            right: 0,
            height: 200.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF392B54),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Image.asset(
                'assets/img/ya.png',
                height: 280.0,
                width: 400.0,
              ),
            ),
          ),
          Positioned(
            top: 100.0,
            left: -10,
            right: -10,
            child: Divider(
              color: Colors.grey,
              thickness: 1.0,
              height: 10.0,
              indent: 20.0,
              endIndent: 20.0,
            ),
          ),
          Positioned(
            top: 40.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'TransitoNet',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 340.0,
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
          Positioned(
            bottom: 660.0,
            left: 20.0,
            right: 20.0,
            child: GestureDetector(
              onTap: () {
                // Navegar a otra página cuando se toque el texto
                print('Navigate to another page');
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2.0),
                    ),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/img/abogado.png'),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    children: [
                      Text(
                        'Hola, Sebastian',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '¿Qué quieres hacer hoy?',
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
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
