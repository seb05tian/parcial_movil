import 'package:flutter/material.dart';

class first_screen extends StatelessWidget {
  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Contenedor de fondo personalizado
          Container(
            decoration: BoxDecoration(
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
            height: 260.0,
            child: Container(
              decoration: BoxDecoration(
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

          // Contenedor con la imagen "carro.png" en la mitad de la primera imagen y un poco más abajo
          Positioned(
            top: 200.0,
            left: MediaQuery.of(context).size.width / 2 - 75,
            child: Container(
              height: 140,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(150.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Color del sombreado
                    spreadRadius: 5, // Radio de expansión del sombreado
                    blurRadius: 7, // Radio de desenfoque del sombreado
                    offset: Offset(0, 3), // Desplazamiento del sombreado
                  ),
                ],
              ),
              child: Image.asset(
                'assets/img/carro.png',
                height: 80.0,
                width: 100.0,
              ),
            ),
          ),

          // Contenedor con el texto "TransitoNet" debajo de las imágenes
          Positioned(
            top: 350.0,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'TransitoNet',
                style: TextStyle(
                  color: Color(0xFF392B54),
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),

          // Botones de "Iniciar Sesión" y "Registrarse"
          Positioned(
            top: 420.0,
            left: 20.0,
            right: 20.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9292B54), // Color del botón "Iniciar Sesión"
                    textStyle:
                        TextStyle(color: Colors.white), // Color del texto
                    padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 25), // Espaciado interno del botón
                  ),
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7F6ADB), // Color del botón "Registrarse"
                    textStyle:
                        TextStyle(color: Colors.white), // Color del texto
                    padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30), // Espaciado interno del botón
                  ),
                  child: Text(
                    'Registrarse',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
