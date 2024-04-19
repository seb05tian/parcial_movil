import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar.dart';

import 'package:parcial_movil_co2/screens/Screens_H/configuracion/buscador/message_field_box.dart';

class BuscarLeyes extends StatelessWidget {
  
  static const String routename = "BuscarLeyes";
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenSizeFont = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.20,
                width: screenWidth * 0.95,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Leyes de Transito',
                          style: TextStyle(
                            color: Color(0xFF392B54),
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [MessageFieldBox()],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                width: 2,
                              )),
                              width: screenWidth * 0.9,
                              height: screenHeight * 0.08,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: screenWidth * 0.12,
                                    padding: const EdgeInsets.all(8),
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(255, 139, 75, 223),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Art 1',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'Ambito de Aplicacion',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenSizeFont * 0.022,
                                      color: Color(0xFF392B54),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 2)),
                              width: screenWidth * 0.9,
                              child: const Text(
                                'Sed ut perspiciatis unde wdboudwbiudwbiudwiubdwiuvdwiuvwdviudwviudwviuwdviudwvdwviuwdviudwviudwdwviudvwiuvdwvuidwviudwviuwdqui ratione',
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
