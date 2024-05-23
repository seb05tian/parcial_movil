import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/buscar_infraciones_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar.dart';
import 'package:parcial_movil_co2/screens/Screens_H/leyes_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/list_abogado.dart';
import 'package:parcial_movil_co2/screens/notificaciones.dart';

import 'Screens_H/señales_transito.dart';

class Homepage extends StatelessWidget {
  static const String routename = "Homepage";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(context: context),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE6E6E6), Color(0xFFB6B6B6)],
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.10,
            left: size.width * 0.060,
            right: size.width * 0.060,
            height: size.height * 0.4,
            child: Container(
              width: size.width * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(size.height * 0.05),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: const Offset(3, 3),
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
                          Navigator.pushReplacementNamed(
                              context, notificaciones.routename);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(size.height * 0.02),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.height * 0.008),
                                child: Icon(
                                  Icons.notifications,
                                  size: size.height * 0.08,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
                            Text(
                              'Notificaciones',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, SenalesTransito.routename);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(size.height * 0.02),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.height * 0.008),
                                child: Icon(
                                  Icons.traffic,
                                  size: size.height * 0.08,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
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
                          Navigator.pushReplacementNamed(
                              context, ListAbogado.routename);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(size.height * 0.02),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.height * 0.008),
                                child: Icon(
                                  Icons.account_balance,
                                  size: size.height * 0.08,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
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
                          Navigator.pushReplacementNamed(
                              context, LeyesTransito.routename);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(size.height * 0.02),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.height * 0.008),
                                child: Icon(
                                  Icons.gavel,
                                  size: size.height * 0.08,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
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
                          Navigator.pushReplacementNamed(
                              context, BuscarInfracciones.routename);
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFCCCCCE),
                                borderRadius: BorderRadius.circular(size.height * 0.02),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(size.height * 0.008),
                                child: Icon(
                                  Icons.local_police,
                                  size: size.height * 0.08,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(height: size.height * 0.01),
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
