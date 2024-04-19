import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final double width;
  final double height;
  final String titulo;
  final String contenido;

  const TextBox({
    super.key,
    required this.width,
    required this.height,
    required this.titulo,
    required this.contenido,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white, // Color sólido del Container
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                    0.7), // Color de la sombra con opacidad reducida
                spreadRadius: 1, // Radio de difusión de la sombra
                blurRadius: 5, // Radio de desenfoque de la sombra
                offset: const Offset(
                  4,
                  4,
                ), // Desplazamiento hacia la derecha y hacia abajo
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  titulo,
                  style: const TextStyle(
                    color: Color(0xFF392B54),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  contenido,
                  style: const TextStyle(
                    color: Color(0xFF392B54),
                    fontSize: 15.0,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
