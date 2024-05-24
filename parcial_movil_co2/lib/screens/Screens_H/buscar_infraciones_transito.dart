import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';
import 'leyes_transito.dart';

class InfraccionTransito {
  late final String id;
  final String nombre;
  final String descripcion;
  final String inmovilizacion;
  final String pasosLegales;

  InfraccionTransito({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.inmovilizacion,
    required this.pasosLegales,
  });

  factory InfraccionTransito.fromJson(Map<String, dynamic> json) {
    return InfraccionTransito(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      inmovilizacion: json['inmovilizacion'],
      pasosLegales: json['pasosLegales'],
    );
  }
}

class BuscarInfracciones extends StatefulWidget {
  static const String routename = "BuscarInfracciones";

  @override
  _BuscarInfraccionesState createState() => _BuscarInfraccionesState();
}

class _BuscarInfraccionesState extends State<BuscarInfracciones> {
  late List<InfraccionTransito> _infracciones;
  late List<InfraccionTransito> _filteredInfracciones;

  @override
  void initState() {
    super.initState();
    _loadInfracciones();
  }

  Future<void> _loadInfracciones() async {
    final String data =
        await rootBundle.loadString('assets/Data/infraccionesTransito.json');
    final parsedData = json.decode(data);
    final List<dynamic> infraccionesJson = parsedData['infraccionesTransito'];
    setState(() {
      _infracciones = infraccionesJson
          .map((json) => InfraccionTransito.fromJson(json))
          .toList();
      _filteredInfracciones = List.from(_infracciones);
    });
  }

  void _filterInfracciones(String keyword) {
    setState(() {
      _filteredInfracciones = _infracciones
          .where((infraccion) =>
              infraccion.id.toLowerCase().contains(keyword.toLowerCase()))
          .toList();
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
              Container(
                height: screenHeight * 0.17,
                width: screenWidth * 0.95,
                child: Column(
                  children: [
                    const Row(
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
                    const SizedBox(
                      height: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                          onChanged: _filterInfracciones,
                          decoration: InputDecoration(
                            hintText: 'Buscar por infracción...',
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
                child: _filteredInfracciones.isEmpty
                    ? Center(
                        child: Text('No se encontraron infracciones.'),
                      )
                    : ListView.builder(
                        itemCount: _filteredInfracciones.length,
                        itemBuilder: (context, index) {
                          final infraccion = _filteredInfracciones[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LeyesTransito(
                                    id: infraccion.id,
                                    descripcion: infraccion.descripcion,
                                    pasosLegales: infraccion.pasosLegales,
                                  ),
                                ),
                              );
                            },
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
                                    width: screenWidth * 0.9,
                                    height: screenHeight * 0.08,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: screenWidth * 0.12,
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 139, 75, 223),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                infraccion.id,
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          infraccion.inmovilizacion,
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
                                    width: screenWidth * 0.9,
                                    child: Text(
                                      infraccion.descripcion,
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
