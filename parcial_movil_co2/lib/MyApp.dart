import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/HomePage.dart';
import 'package:parcial_movil_co2/screens/Screens_H/editar_perfil.dart';
import 'package:parcial_movil_co2/screens/derechos_deberes.dart';
import 'package:parcial_movil_co2/screens/jurisdiccion.dart';
import 'package:parcial_movil_co2/screens/notificaciones.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: editar_perfil(),
    );
  }
}
