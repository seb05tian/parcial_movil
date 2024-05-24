import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/botones/botones.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/cajasTexto/cajaDescripcion.dart';
import 'package:parcial_movil_co2/screens/Screens_H/list_abogado.dart';
import 'package:parcial_movil_co2/screens/jurisdiccion.dart';

class LeyesTransito extends StatelessWidget {
  final String id;
  final String descripcion;
  final String pasosLegales;

  LeyesTransito({
    required this.id,
    required this.descripcion,
    required this.pasosLegales,
  });

  static const String routename = "LeyesTransito";

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar2(context: context),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: screenWidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Text(
                    id,
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
                    contenido: descripcion,
                    screenWidth: screenWidth,
                    screenHeight: screenHeight),
                const SizedBox(
                  height: 20,
                ),
                CajaDescripcion(
                    titulo: 'Procesos Legales',
                    contenido: pasosLegales,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Button(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, Jurisdiccion.routename);
                            },
                            titulo: 'Juridiccion',
                            color: const Color(0xFF392B54),
                          ),
                          const SizedBox(
                            width: 0,
                          ),
                          Button(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, ListAbogado.routename);
                              },
                              titulo: 'Asesoria Legal',
                              color: const Color.fromARGB(255, 139, 75, 223))
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
