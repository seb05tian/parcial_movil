import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/HomePage.dart';
import 'package:parcial_movil_co2/screens/Screens_H/buscar_infraciones_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/buscar_leyes_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/editar_perfil.dart';
import 'package:parcial_movil_co2/screens/Screens_H/leyes_transito.dart';
import 'package:parcial_movil_co2/screens/Screens_H/list_abogado.dart';
import 'package:parcial_movil_co2/screens/Screens_H/se%C3%B1ales_transito.dart';
import 'package:parcial_movil_co2/screens/derechos_deberes.dart';
import 'package:parcial_movil_co2/screens/first_screen.dart';
import 'package:parcial_movil_co2/screens/jurisdiccion.dart';
import 'package:parcial_movil_co2/screens/login.dart';
import 'package:parcial_movil_co2/screens/notificaciones.dart';
import 'package:parcial_movil_co2/screens/register.dart';
import 'package:parcial_movil_co2/screens/register_abogados.dart';

import 'screens/chat.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: first_screen.routename,
      routes: {
        first_screen.routename: (context) => first_screen(),
        Homepage.routename: (context) => Homepage(),
        notificaciones.routename: (context) => notificaciones(),
        login.routename: (context) => login(),
        register.routename: (context) => register(),
        SenalesTransito.routename: (context) => SenalesTransito(),
        ListAbogado.routename: (context) => ListAbogado(),
        
        BuscarInfracciones.routename: (context) => BuscarInfracciones(),
        Editar_perfil.routename: (context) => Editar_perfil(),
        BuscarLeyes.routename: (context) => BuscarLeyes(),
        Jurisdiccion.routename: (context) => Jurisdiccion(),
        Derechos_deberes.routename: (context) => Derechos_deberes(),
        Register_abogados.routename: (context) => Register_abogados(),
        ChatScreen.routename: (context) => ChatScreen(),
      },
    );
  }
}
