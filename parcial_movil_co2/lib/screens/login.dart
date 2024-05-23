import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/HomePage.dart';

class login extends StatelessWidget {
  static const String routename = "login";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          // Contenedor de fondo personalizado
          Container(
            height: size.height * 0.001,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE6E6E6), Color(0xFFB6B6B6)],
              ),
            ),
          ),

          
          Container(
            height: size.height * 0.3,
            decoration: const BoxDecoration(
              color: Color(0xFF392B54),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            child: Center(
              child: Image.asset(
                'assets/img/ya.png',
                height: size.height * 0.35,
                width: size.width * 0.7,
              ),
            ),
          ),

          // Texto "TransitoNet" en el color especificado
          Center(
            child: Text(
              'TransitoNet',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontWeight: FontWeight.bold,
                fontSize: size.height * 0.05,
              ),
            ),
          ),

          
          Padding(
            padding: EdgeInsets.fromLTRB(size.width * 0.075, size.height * 0.02, size.width * 0.05, 0.0),
            child: Text(
              'Nombre de usuario',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: size.height * 0.02,
              ),
            ),
          ),

          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(size.height * 0.03),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Nombre de usuario',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // Texto "Contraseña" arriba del campo de texto
          Padding(
            padding: EdgeInsets.fromLTRB(size.width * 0.075, size.height * 0.02, size.width * 0.05, 0.0),
            child: Text(
              'Contraseña',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: size.height * 0.02,
              ),
            ),
          ),

          // Campo de texto para la contraseña
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(size.height * 0.03),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

          // Botón "Iniciar sesión"
          Padding(
            padding: EdgeInsets.all(size.width * 0.05),
            child: Container(
              height: size.height * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF392B54),
                borderRadius: BorderRadius.circular(size.height * 0.03),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Homepage.routename);
                },
                child: Text(
                  'Iniciar sesión',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.height * 0.025,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
