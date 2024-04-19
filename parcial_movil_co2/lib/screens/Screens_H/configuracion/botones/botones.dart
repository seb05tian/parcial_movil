import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String titulo;
  final Color color;
  const Button({
    super.key,
    required this.titulo,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  color), // Color de fondo del botón
            ),
            child: Text(
              titulo,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )
      ],
    );
  }
}
