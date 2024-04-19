import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar.dart';

import 'package:parcial_movil_co2/screens/Screens_H/configuracion/buscador/message_field_box.dart';

class SenalesTransito extends StatelessWidget {
  const SenalesTransito({super.key});
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenSizeFont = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(context: context),
        body: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              Container(
                height: screenHeight * 0.20,
                width: screenWidth * 0.95,
                child: const Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Señales de Transito',
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
                              offset: const Offset(4, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: screenWidth * 0.9,
                              height: screenHeight * 0.08,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      'Ambito de Aplicacion',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: screenSizeFont * 0.022,
                                        color: Color(0xFF392B54),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(20),

                                  width: screenWidth * 0.45,
                                  height: screenHeight *
                                      0.19, // Esto también ocupará la mitad del ancho del Row
                                  // Aquí puedes colocar tu imagen en lugar de un contenedor vacío
                                  child:
                                      Placeholder(), // Placeholder es solo para demostración, reemplázalo con tu imagen
                                ),
                                Container(
                                  padding: const EdgeInsets.all(20),

                                  width: screenWidth *
                                      0.45, // Esto ocupará la mitad del ancho del Row
                                  child: const Text(
                                    'Sed ut perspiciatis unde wdvvdvd dfd ssdssiudwviuwdviudwvdwviuwdviudwviudwdwviudvwiuvdwvuidwviudwviuwdqui ratione',
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                              ],
                            ),
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
