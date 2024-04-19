import 'package:flutter/material.dart';

class PruebaBuscador extends StatelessWidget {
  const PruebaBuscador({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white, // Color sólido del Container
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.7), // Color de la sombra con opacidad reducida
            spreadRadius: 1, // Radio de difusión de la sombra
            blurRadius: 5, // Radio de desenfoque de la sombra
            offset: const Offset(
              4,
              4,
            ), // Desplazamiento hacia la derecha y hacia abajo
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a search term',
          ),
        ),
      ),
    );
  }
}
