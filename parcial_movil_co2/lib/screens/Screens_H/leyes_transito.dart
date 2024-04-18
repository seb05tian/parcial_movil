import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/Screens_H/appbar/custon_appBar.dart';

class LeyesTransito extends StatelessWidget {
  const LeyesTransito({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'B10',
                  style: TextStyle(
                    color: Color(0xFF392B54),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              )
            ],
          ),
          const TextBox(
            width: 300,
            height: 150,
            titulo: 'Descripcion',
            contenido:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ddsdsdsd dsdsdd sfjusto et cursus posuere',
          ),
          const SizedBox(
            height: 30,
          ),
          const TextBox(
            width: 300,
            height: 250,
            titulo: 'Descripcion',
            contenido:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit Lorem ipsum dolor sit amet, consectetur adipiscing elit  Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit. ddsdsdsd dsdsdd sfjusto et cursus posuere',
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: [
              Button(
                titulo: 'Juridiccion',
                color: Color(0xFF392B54),
              ),
              SizedBox(
                width: 10,
              ),
              Button(
                  titulo: 'Asesoria Legal',
                  color: Color.fromARGB(255, 139, 75, 223))
            ],
          )
        ],
      ),
    ));
  }
}

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
          margin: const EdgeInsets.only(left: 50),
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
