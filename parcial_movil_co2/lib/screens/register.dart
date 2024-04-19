import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/login.dart';

class register extends StatelessWidget {
  static const String routename = "register";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE6E6E6), Color(0xFFB6B6B6)],
              ),
            ),
          ),

          // Contenedor con la imagen "ya.png" en la parte superior
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 180.0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF392B54),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
              child: Image.asset(
                'assets/img/ya.png',
                height: 280.0,
                width: 400.0,
              ),
            ),
          ),

          // Texto "TransitoNet" en el color especificado
          const Positioned(
            top: 180.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'TransitoNet',
                style: TextStyle(
                  color: Color(0xFF392B54),
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
          ),

          // Texto "Nombre de usuario" arriba del campo de texto
          const Positioned(
            bottom: 520.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Nombre de usuario',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para el nombre de usuario
          Positioned(
            bottom: 460.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
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

          const Positioned(
            bottom: 420.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Contraseña',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para la contraseña
          Positioned(
            bottom: 360.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
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

          const Positioned(
            bottom: 315.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Confirmar Contraseña',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para la contraseña
          Positioned(
            bottom: 255.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
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
          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              height: 50.0,
              width: 10.0,
              decoration: BoxDecoration(
                color: const Color(0xFF392B54),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, login.routename);
                },
                child: const Text(
                  'Finalizar registro',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),

          const Positioned(
            bottom: 220.0,
            left: 30.0,
            right: 20.0,
            child: Text(
              'Email ',
              style: TextStyle(
                color: Color(0xFF392B54),
                fontSize: 16.0,
              ),
            ),
          ),

          // Campo de texto para el nombre de usuario
          Positioned(
            bottom: 160.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
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
                  hintText: 'Email',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
