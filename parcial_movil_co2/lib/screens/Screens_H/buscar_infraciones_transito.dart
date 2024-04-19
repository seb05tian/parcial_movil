import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/botones/botones.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/buscador/message_field_box.dart';

class BuscarInfracciones extends StatelessWidget {
  const BuscarInfracciones({super.key});

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
                height: screenHeight * 0.25,
                width: screenWidth * 0.95,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Button(
                          titulo: 'Juridiccion',
                          color: Color.fromARGB(255, 139, 75, 223),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Infracciones de Tránsito',
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
                                          'B10',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'No aplica inmovilización',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: screenSizeFont * 0.022,
                                      color: const Color.fromARGB(
                                          255, 139, 75, 223),
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
                                'Sed ut perspiciatis unde efbbiefbiuefibuefbiuefbiuefbiuefbiuebfiuebfibiefbiefbiuefbiuefbiefbiefbiuefbiuebfiuebfibieufbiuefbiuefbiuefbefbiuebfubefbiuefbuiefbefefboefuoefbiuefbiuefbiuefbiuebiufbiuefbiubefbuefbui iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos wddwbdvwodwbiowdboudwbiudwbiudwiubdwiuvdwiuvwdviudwviudwviuwdviudwvdwviuwdviudwviudwdwviudvwiuvdwvuidwviudwviuwdqui ratione',
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
