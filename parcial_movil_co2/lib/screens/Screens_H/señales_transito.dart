import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:parcial_movil_co2/modelos/señalesTransito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';

class SenalesTransito extends StatefulWidget {
  static const String routename = "SenalesTransito";

  @override
  _SenalesTransitoState createState() => _SenalesTransitoState();
}

class _SenalesTransitoState extends State<SenalesTransito> {
  late Future<List<SenalTransito>> _senalesFuture;
  List<SenalTransito> _senales = [];
  List<SenalTransito> _filteredSenales = [];
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _senalesFuture = loadSenalesTransito();
    _controller.addListener(_filterSenales);
  }

  Future<List<SenalTransito>> loadSenalesTransito() async {
    final String response =
        await rootBundle.loadString('assets/Data/señalesTransito.json');
    final data = json.decode(response);
    List<SenalTransito> senales = (data['SeñalesTransito'] as List)
        .map((json) => SenalTransito.fromJson(json))
        .toList();
    setState(() {
      _senales = senales;
      _filteredSenales = senales;
    });
    return senales;
  }

  void _filterSenales() {
    String query = _controller.text.toLowerCase();
    setState(() {
      _filteredSenales = _senales.where((senal) {
        return senal.nombre.toLowerCase().contains(query) ||
            senal.descripcion.toLowerCase().contains(query);
      }).toList();
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
                height: screenHeight * 0.20,
                width: screenWidth * 0.95,
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Señales de Tránsito',
                          style: TextStyle(
                            color: Color(0xFF392B54),
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          labelText: 'Buscar señal',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: FutureBuilder<List<SenalTransito>>(
                  future: _senalesFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Center(child: Text('No hay datos disponibles'));
                    }

                    return ListView.builder(
                      itemCount: _filteredSenales.length,
                      itemBuilder: (context, index) {
                        var senal = _filteredSenales[index];
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
                                      padding: const EdgeInsets.all(5),
                                      child: Text(
                                        senal.nombre,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: screenSizeFont * 0.022,
                                          color: const Color(0xFF392B54),
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
                                    height: screenHeight * 0.19,
                                    child: Image.asset(
                                      senal.imagen,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Icon(Icons.error,
                                            color: Colors.red);
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(20),
                                    width: screenWidth * 0.45,
                                    child: Text(
                                      senal.descripcion,
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
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
