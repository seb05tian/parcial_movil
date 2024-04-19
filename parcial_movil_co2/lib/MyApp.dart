import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/HomePage.dart';
import 'package:parcial_movil_co2/screens/Screens_H/buscar_infraciones_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/buscar_leyes_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/leyes_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/list_abogado.dart';
import 'package:parcial_movil_co2/screens/Screens_H/se%C3%B1ales_transito.dart';

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
      home: ListAbogado(),
    );
  }
}
