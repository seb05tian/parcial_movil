import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/botones/botones.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/buscador/message_field_box.dart';

class ListAbogado extends StatelessWidget {
  const ListAbogado({super.key});

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
                height: screenHeight * 0.25,
                width: screenWidth * 0.95,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Button(
                          titulo: 'Postulate',
                          color: Color.fromARGB(255, 139, 75, 223),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lista de Abogado',
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
                            SizedBox(
                              width: screenWidth * 0.9,
                              height: screenHeight * 0.1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                            width: 2,
                                            color: const Color(0xFF392B54)),
                                        color: const Color(0xFF392B54)),
                                    padding: const EdgeInsets.all(4),
                                    width: screenWidth * 0.25,
                                    height: screenHeight *
                                        0.19, // Esto también ocupará la mitad del ancho del Row
                                    // Aquí puedes colocar tu imagen en lugar de un contenedor vacío
                                    child:
                                        const Placeholder(), // Placeholder es solo para demostración, reemplázalo con tu imagen
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 7),
                                        child: Text(
                                          'No aplica inmovilización',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: screenSizeFont * 0.022,
                                            color: const Color.fromARGB(
                                                255, 139, 75, 223),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 100),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors
                                                    .yellow), // Estrella 1
                                            Icon(Icons.star,
                                                color: Colors
                                                    .yellow), // Estrella 2
                                            Icon(Icons.star,
                                                color: Colors
                                                    .yellow), // Estrella 3
                                            Icon(Icons.star,
                                                color: Colors
                                                    .yellow), // Estrella 4
                                            Icon(Icons.star,
                                                color: Color.fromARGB(255, 161,
                                                    158, 132)), // Estrella 5
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const Divider(),
                            Container(
                              padding: const EdgeInsets.all(20),
                              width: screenWidth * 0.9,
                              child: const Text(
                                'Sed ut perspiciatis unde eatae vitae  sed quia consequuntur magni dolores eos wddwbdvwodwbiowdboudwbiudwbiudwiubdwiuvdwiuvwdviudwviudwviuwdviudwvdwviuwdviudwviudwdwviudvwiuvdwvuidwviudwviuwdqui ratione',
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Button(
                                  titulo: 'Contastar',
                                  color: Color.fromARGB(255, 139, 75, 223),
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
