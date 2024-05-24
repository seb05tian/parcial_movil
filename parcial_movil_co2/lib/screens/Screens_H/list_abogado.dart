import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/botones/botones.dart';
import 'package:parcial_movil_co2/screens/chat.dart';
import 'package:parcial_movil_co2/screens/register_abogados.dart';
import 'package:parcial_movil_co2/modelos/abogado.dart';

class ListAbogado extends StatefulWidget {
  static const String routename = "ListAbogado";

  @override
  _ListAbogadoState createState() => _ListAbogadoState();
}

class _ListAbogadoState extends State<ListAbogado> {
  late List<Abogado> abogados;
  late List<Abogado> filteredAbogados = [];

  @override
  void initState() {
    super.initState();
    abogados = [];
    _loadAbogados();
  }

  Future<void> _loadAbogados() async {
    final String data = await DefaultAssetBundle.of(context)
        .loadString('assets/Data/abogado.json');
    final parsedData = json.decode(data);
    final List<dynamic> abogadosJson = parsedData['abogado'];
    setState(() {
      abogados = abogadosJson
          .map((abogadoJson) => Abogado.fromJson(abogadoJson))
          .toList();
      filteredAbogados = List.from(abogados);
    });
  }

  void _filterAbogados(String keyword) {
    setState(() {
      if (keyword.isEmpty) {
        filteredAbogados = List.from(abogados);
      } else {
        filteredAbogados = abogados
            .where((abogado) =>
                abogado.nombre.toLowerCase().contains(keyword.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var screenSizeFont = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar2(context: context),
        body: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.21,
                width: screenWidth * 0.95,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Button(
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, Register_abogados.routename);
                          },
                          titulo: 'Postulate',
                          color: const Color.fromARGB(255, 139, 75, 223),
                        ),
                      ],
                    ),
                    const Row(
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
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextField(
                          onChanged: _filterAbogados,
                          decoration: InputDecoration(
                            hintText: 'Buscar por nombre de abogado...',
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        itemCount: filteredAbogados.length,
                        itemBuilder: (context, index) {
                          final abogado = filteredAbogados[index];
                          return Container(
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
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          border: Border.all(
                                            width: 1,
                                            color: const Color(0xFF392B54),
                                          ),
                                          color: const Color(0xFF392B54),
                                        ),
                                        width: screenWidth * 0.25,
                                        height: screenHeight * 0.19,
                                        child: CircleAvatar(
                                          radius: screenWidth * 0.125,
                                          backgroundColor: Colors.transparent,
                                          child: ClipOval(
                                            child: Image.asset(
                                              abogado.imagen,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 7),
                                            child: Text(
                                              abogado.nombre,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize:
                                                    screenSizeFont * 0.022,
                                                color: const Color.fromARGB(
                                                    255, 139, 75, 223),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: screenWidth * 0.01),
                                            child: Row(
                                              children: List.generate(
                                                abogado.puntuacion,
                                                (index) => Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                ),
                                              ),
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
                                  child: Text(
                                    abogado.descripcion,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Button(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, ChatScreen.routename);
                                      },
                                      titulo: 'Contastar',
                                      color: const Color.fromARGB(
                                          255, 139, 75, 223),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
