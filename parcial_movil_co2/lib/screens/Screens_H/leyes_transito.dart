import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/botones/botones.dart';

import 'package:parcial_movil_co2/screens/Screens_H/configuracion/cajasTexto/cajaDescripcion.dart';

class LeyesTransito extends StatelessWidget {
  
  static const String routename = "LeyesTransito";

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: screenWidth,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 2, color: const Color.fromARGB(255, 2, 0, 0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'B10',
                    style: TextStyle(
                      color: Color(0xFF392B54),
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                CajaDescripcion(
                    titulo: 'Descripcion',
                    contenido:
                        'kansldkasijdlak dksjandlkabidnsalkmdbiasom dlajndoaodksa',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                const SizedBox(
                  height: 20,
                ),
                CajaDescripcion(
                    titulo: 'Procesos Legales',
                    contenido:
                        'kansldkasijdlak dkklmslkcnkdjasdkfbaskk sajdsdusad sdsiudosdosid soidnsod sodns dsudsa jdsnadmasoj duh asidsiaj osimdojdosmadjandisa skjnds dkjks disijd asu diaj ds adioidsnof s fiuos dfoj 9fsj kjsdskdnlad dsijadnsndniaus djsaidskjn sk dijukdojspd osd sod s dojs dsoj dsdk sld sdd skldsjandlkabidnsalkmdbiasom dlajndoaodksa',
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.08,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.green)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            titulo: 'Juridiccion',
                            color: Color(0xFF392B54),
                          ),
                          SizedBox(
                            width: 0,
                          ),
                          Button(
                              titulo: 'Asesoria Legal',
                              color: Color.fromARGB(255, 139, 75, 223))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
