import 'package:flutter/material.dart';

class CajaDescripcion extends StatelessWidget {
  final String titulo;
  final String contenido;
  const CajaDescripcion({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.titulo,
    required this.contenido,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.04,
            width: screenWidth * 0.6,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titulo,
                  style: const TextStyle(
                    color: Color(0xFF392B54),
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(2),
            
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    contenido,
                    style: const TextStyle(
                      color: Color(0xFF392B54),
                      fontSize: 15.0,
                    ),
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
