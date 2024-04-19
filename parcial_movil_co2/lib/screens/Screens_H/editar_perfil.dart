import 'package:flutter/material.dart';

import 'package:parcial_movil_co2/screens/Screens_H/configuracion/appbar/custon_appBar2.dart';

class Editar_perfil extends StatelessWidget {
  static const String routename = "Editar_perfil";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(context: context),
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

          const Positioned(
            top: -55.0,
            left: 0,
            right: 0,
            height: 180.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Editar perfil',
                    style: TextStyle(
                      color: Color(0xFF392B54), // Color del texto
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Positioned(
            bottom: 440.0,
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
            bottom: 380.0,
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
            bottom: 340.0,
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
            bottom: 280.0,
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
            bottom: 235.0,
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
            bottom: 175.0,
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
            bottom: 10.0,
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
                  // Aquí iría la lógica para iniciar sesión
                },
                child: const Text(
                  'Guardar cambios',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),

          const Positioned(
            bottom: 140.0,
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
            bottom: 80.0,
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
