import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:parcial_movil_co2/modelos/leyesTransito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';

class BuscarLeyes extends StatefulWidget {
  static const String routename = "BuscarLeyes";

  @override
  _BuscarLeyesState createState() => _BuscarLeyesState();
}

class _BuscarLeyesState extends State<BuscarLeyes> {
  late List<LeyTransito> _leyes;
  late List<LeyTransito> _filteredLeyes;

  @override
  void initState() {
    super.initState();
    _loadLeyes();
  }

  Future<void> _loadLeyes() async {
    final String data =
        await rootBundle.loadString('assets/Data/leyesTransito.json');
    final parsedData = json.decode(data);
    final List<dynamic> leyesJson = parsedData['leyesTransito'];
    setState(() {
      _leyes = leyesJson.map((json) => LeyTransito.fromJson(json)).toList();
      _filteredLeyes = List.from(_leyes);
    });
  }

  void _filterLeyes(String keyword) {
    setState(() {
      _filteredLeyes = _leyes
          .where(
              (ley) => ley.nombre.toLowerCase().contains(keyword.toLowerCase()))
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
                height: screenHeight * 0.20,
                width: screenWidth * 0.95,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Leyes de Tránsito',
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
                      children: [
                        Expanded(
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
                              onChanged: _filterLeyes,
                              decoration: InputDecoration(
                                hintText: 'Buscar por ley...',
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: _filteredLeyes.isEmpty
                    ? Center(
                        child: Text('No se encontraron leyes.'),
                      )
                    : ListView.builder(
                        itemCount: _filteredLeyes.length,
                        itemBuilder: (context, index) {
                          final ley = _filteredLeyes[index];
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 5, left: 10),
                                      width: screenWidth *
                                          0.16, // Ajustamos el ancho para que quepa 'Art' y el número de la ley
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color:
                                            Color.fromARGB(255, 139, 75, 223),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Art ${ley.id}',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width: screenWidth *
                                            0.03), // Ajusta el espacio entre el número de la ley y el nombre
                                    Expanded(
                                      child: Text(
                                        ley.nombre,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenSizeFont * 0.015,
                                          color: Color(0xFF392B54),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(),
                                Container(
                                  padding: const EdgeInsets.all(20),
                                  width: screenWidth * 0.9,
                                  child: Text(
                                    ley.descripcion,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                  ),
                                )
                              ],
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
